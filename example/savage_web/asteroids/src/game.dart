import "dart:async";
import "dart:math";
import "dart:js_interop";
import "package:web/web.dart" as web;
import "package:savage/savage_web.dart" as svg;

final rand = Random();

abstract class Global {
  static const width = 600, height = 400, margin = 30, strokeWidth = "0.75";
}

enum AsteroidSize { none, large, medium, small }

class Asteroid {
  final polygon = svg.Polygon();
  var size = AsteroidSize.none;
  bool get isAvailable => size == AsteroidSize.none;

  num x = 0, y = 0, t = 0, dx = 0, dy = 0, dt = 0;

  void init(num x, num y, AsteroidSize size) {
    final num speed,
        radius,
        theta = rand.nextDouble() * 2 * pi,
        sides = rand.nextInt(4) + 5;
    switch (size) {
      case AsteroidSize.large:
        speed = 3 + 3 * rand.nextDouble();
        radius = 30 + (rand.nextDouble() - 0.5) * 10;
      case AsteroidSize.medium:
        speed = 4 + 4 * rand.nextDouble();
        radius = 15 + (rand.nextDouble() - 0.5) * 5;
      case AsteroidSize.small:
        speed = 5 + 5 * rand.nextDouble();
        radius = 9 + (rand.nextDouble() - 0.5) * 3;
      case _:
        speed = radius = 0;
    }

    this
      ..x = x
      ..y = y
      ..t = rand.nextInt(360)
      ..dx = speed * cos(theta)
      ..dy = speed * sin(theta)
      ..dt = (rand.nextDouble() - 0.5) * 6
      ..size = size;

    var points = "";
    for (var i = 0; i < sides; i++) {
      final phi =
              i * 2 * pi / sides + (rand.nextDouble() - 0.5) * pi / 2 / sides,
          r = radius * (1 + 0.1 * (rand.nextDouble() - 0.5)),
          tx = r * cos(phi),
          ty = r * sin(phi);
      points += "$tx,$ty ";
    }

    polygon
      ..transform = "translate($x,$y)"
      ..points = points.trim()
      ..strokeWidth = Global.strokeWidth
      ..stroke = "white"
      ..fill = "black";
  }

  void destroy() {
    size = AsteroidSize.none;
    polygon
      ..stroke = "none"
      ..fill = "none";
  }

  void animate(num rx, num ry) {
    x = (x + dx) % Global.width;
    y = (y + dy) % Global.height;
    t = (t + dt) % 360;
    final fx = (Global.width / 2 + x - rx) % Global.width,
        fy = (Global.height / 2 + y - ry) % Global.height;
    polygon.transform = "translate($fx,$fy) rotate($t)";
  }

  bool hitTest(num px, num py) {
    final alpha = t * pi / 180;
    (num, num) makePoint(String p) {
      final xy = p.split(",");
      final (sx, sy) = (num.parse(xy[0]), num.parse(xy[1]));
      final d = sqrt(pow(sx, 2) + pow(sy, 2)), beta = atan2(sx, sy);
      return (x + d * cos(alpha + beta), y + d * sin(alpha + beta));
    }

    final points = [for (final p in polygon.points.split(" ")) makePoint(p)];

    for (var i = 0; i < points.length; i++) {
      final (xp, yp) = points[(i - 1) % points.length];
      final (xc, yc) = points[i];
      final (xn, yn) = points[(i + 1) % points.length];
      final ax = xn - xc,
          ay = yn - yc,
          bx = xp - xc,
          by = yp - yc,
          cx = px - xc,
          cy = py - yc;
      final ac = ax * cy - ay * cx, cb = cx * by - cy * bx;
      if (ac * cb <= 0) {
        return false;
      }
    }
    return true;
  }
}

class AsteroidManager {
  static const capacity = 100;
  final asteroids = [for (var _ = 0; _ < capacity; _++) Asteroid()];
  var _pointer = -1;

  void animateAllAsteroids(num rx, num ry) {
    for (final asteroid in asteroids) {
      if (!asteroid.isAvailable) {
        asteroid.animate(rx, ry);
      }
    }
  }

  void createAsteroid(num x, num y, AsteroidSize size) {
    for (var _ = 0; _ < capacity; _++) {
      _pointer = (_pointer + 1) % capacity;
      final asteroid = asteroids[_pointer];
      if (asteroid.isAvailable) {
        asteroid.init(x, y, size);
        break;
      }
    }
  }
}

class Ship {
  final polygon = svg.Polygon();
  num x = 0, y = 0, t = 0, dx = 0, dy = 0;

  void init() {
    x = Global.width / 2;
    y = Global.height / 2;
    t = 0;
    dx = 0;
    dy = 0;
    polygon
      ..points = "5,0 -3,-3 -2,0 -3,3"
      ..stroke = "white"
      ..fill = "black"
      ..strokeWidth = Global.strokeWidth;
  }

  void animate(num rx, num ry) {
    x = (x + dx) % Global.width;
    y = (y + dy) % Global.height;
    final fx = (Global.width / 2 + x - rx) % Global.width,
        fy = (Global.height / 2 + y - ry) % Global.height;
    polygon.transform = "translate($fx,$fy) rotate($t)";
  }
}

class Fragment {
  final path = svg.Path(stroke: "none", fill: "none");
  bool get isAvailable => path.stroke == "none";
  num dOpacity = 0;
  num x = 0, y = 0, t = 0, dx = 0, dy = 0, dt = 0;

  void init(num x1, num y1, num x2, num y2) {
    dOpacity = (rand.nextInt(5) + 1) * 0.02;
    path.d = (svg.PathBuilder()
          ..moveTo(x1, y1)
          ..lineTo(x2, y2))
        .toString();
  }

  void destroy() {
    path.stroke = "none";
  }

  void animate(num rx, num ry) {
    x = (x + dx) % Global.width;
    y = (y + dy) % Global.height;
    t = (t + dt) % 360;
    final opacity = num.parse(path.strokeOpacity) - dOpacity;
    if (opacity <= 0) {
      destroy();
    } else {
      final fx = (Global.width / 2 + x - rx) % Global.width,
          fy = (Global.height / 2 + y - ry) % Global.height;
      path
        ..transform = "translate($fx,$fy) rotate($t)"
        ..strokeOpacity = opacity.toString();
    }
  }
}

class FragmentManager {
  static const capacity = 100;
  final fragments = [for (var _ = 0; _ < capacity; _++) Fragment()];
  var _pointer = -1;

  void animateAllFragments(num rx, num ry) {
    for (final fragment in fragments) {
      if (!fragment.isAvailable) {
        fragment.animate(rx, ry);
      }
    }
  }

  void createFragments(Asteroid asteroid) {
    final points = asteroid.polygon.points.split(" ").map((p) {
      final coordinates = p.split(","),
          px = num.parse(coordinates[0]),
          py = num.parse(coordinates[1]);
      return (px, py);
    }).toList();
    for (var i = 0; i < points.length; i++) {
      final (x1, y1) = points[i];
      final (x2, y2) = points[(i + 1) % points.length];
      for (var _ = 0; _ < capacity; _++) {
        _pointer = (_pointer + 1) % capacity;
        final fragment = fragments[_pointer];
        if (fragment.isAvailable) {
          fragment
            ..init(x1, y1, x2, y2)
            ..x = asteroid.x
            ..y = asteroid.y
            ..dx = asteroid.dx + (rand.nextDouble() - 0.5)
            ..dy = asteroid.dy + (rand.nextDouble() - 0.5)
            ..t = asteroid.t
            ..dt = asteroid.dt;
          fragment.path
            ..stroke = asteroid.polygon.stroke
            ..strokeWidth = Global.strokeWidth
            ..strokeOpacity = "1";
          break;
        }
      }
    }
  }
}

class StarDust {
  final circle = svg.Circle(
    stroke: "none",
    fill: "white",
    fillOpacity: "1",
  );

  final num depth;
  late num x, y;

  StarDust(this.depth) {
    final r = (rand.nextDouble() * 0.75 + 1) / depth;
    x = (rand.nextDouble() - 0.5) * depth * Global.width;
    y = (rand.nextDouble() - 0.5) * depth * Global.height;

    circle
      ..r = r.toString()
      ..cx = x.toString()
      ..cy = y.toString();
  }

  void twinkle(Ship ship) {
    var opacity =
        num.parse(circle.fillOpacity) + (rand.nextBool() ? 0.1 : -0.1);
    if (opacity < 0.25) {
      opacity = 0.25;
    }
    if (opacity > 0.85) {
      opacity = 0.85;
    }
    x = (x - ship.dx / depth) % Global.width;
    y = (y - ship.dy / depth) % Global.height;

    circle
      ..fillOpacity = opacity.toString()
      ..cx = x.toString()
      ..cy = y.toString();
  }
}

class Missile {
  final circle = svg.Circle(r: "1", stroke: "none", fill: "none");
  bool get isAvailable => circle.fill == "none";
  var life = 0;
  num x = 0, y = 0, dx = 0, dy = 0;

  void init(Ship ship) {
    const speed = 8;
    final theta = ship.t * pi / 180;
    x = ship.x + ship.dx;
    y = ship.y + ship.dy;
    dx = ship.dx + speed * cos(theta);
    dy = ship.dy + speed * sin(theta);
    circle
      ..cx = x.toString()
      ..cy = y.toString()
      ..fill = "white";
    life = 25;
  }

  void destroy() {
    circle.fill = "none";
  }

  void animate(num rx, num ry) {
    x = (x + dx) % Global.width;
    y = (y + dy) % Global.height;
    life--;
    if (life == 0) {
      destroy();
    } else {
      final fx = (Global.width / 2 + x - rx) % Global.width,
          fy = (Global.height / 2 + y - ry) % Global.height;
      circle
        ..cx = fx.toString()
        ..cy = fy.toString();
    }
  }
}

class MissileManager {
  static const capacity = 20;
  final missiles = [for (var _ = 0; _ < capacity; _++) Missile()];
  var _pointer = -1;

  void animateAllMissiles(num rx, num ry) {
    for (final missile in missiles) {
      if (!missile.isAvailable) {
        missile.animate(rx, ry);
      }
    }
  }

  void createMissile(Ship ship) {
    for (var _ = 0; _ < capacity; _++) {
      _pointer = (_pointer + 1) % capacity;
      final missile = missiles[_pointer];
      if (missile.isAvailable) {
        missile.init(ship);
        break;
      }
    }
  }
}

class Game {
  final container = svg.SVG(
    viewBox: svg.ViewBox(
            topLeftX: Global.margin,
            topLeftY: Global.margin,
            width: Global.width - 2 * Global.margin,
            height: Global.height - 2 * Global.margin)
        .toString(),
    width: Global.width.toString(),
    height: Global.height.toString(),
  );

  final asteroidManager = AsteroidManager(),
      fragmentManager = FragmentManager(),
      missileManager = MissileManager();

  final starDust = [
    ...[for (var _ = 0; _ < 50; _++) StarDust(3)],
    ...[for (var _ = 0; _ < 25; _++) StarDust(2)],
    ...[for (var _ = 0; _ < 10; _++) StarDust(1)]
  ];

  final ship = Ship();

  final controls = {
    web.KeyCode.UP: false,
    web.KeyCode.DOWN: false,
    web.KeyCode.LEFT: false,
    web.KeyCode.RIGHT: false,
    web.KeyCode.X: false,
  };

  var missileLoaded = false;

  Game() {
    container.appendChildren([
      svg.Rect(
        width: Global.width.toString(),
        height: Global.height.toString(),
        fill: "black",
        stroke: "none",
      ),
      ...[for (final star in starDust) star.circle],
      ...[for (final fragment in fragmentManager.fragments) fragment.path],
      ...[for (final asteroid in asteroidManager.asteroids) asteroid.polygon],
      ...[for (final missile in missileManager.missiles) missile.circle],
      ship.polygon,
    ]);

    web.document
      ..onkeydown = ((web.KeyboardEvent e) {
        if (controls.containsKey(e.keyCode)) {
          controls[e.keyCode] = true;
        }
      }).toJS
      ..onkeyup = ((web.KeyboardEvent e) {
        if (controls.containsKey(e.keyCode)) {
          controls[e.keyCode] = false;
        }
      }).toJS;
    Timer.periodic(Duration(milliseconds: 50), (_) => gameLoop());

    ship.init();
    asteroidManager.asteroids[0].init(50, 50, AsteroidSize.large);
  }

  void accelerate(num d) {
    const acc = 0.25, maxSpeed = 15;
    final theta = ship.t / 180 * pi,
        ddx = acc * cos(theta),
        ddy = acc * sin(theta);
    var dx = ship.dx + d * ddx,
        dy = ship.dy + d * ddy,
        speed = sqrt(pow(dx, 2) + pow(dy, 2));
    if (speed > maxSpeed) {
      final t = atan2(dy, dx);
      dx = maxSpeed * cos(t);
      dy = maxSpeed * sin(t);
    }
    ship
      ..dx = dx
      ..dy = dy;
  }

  void gameLoop() {
    if (controls[web.KeyCode.UP]!) {
      accelerate(1);
    }

    if (controls[web.KeyCode.DOWN]!) {
      accelerate(-1);
    }

    if (controls[web.KeyCode.LEFT]!) {
      ship.t -= 15;
    }

    if (controls[web.KeyCode.RIGHT]!) {
      ship.t += 15;
    }

    if (controls[web.KeyCode.X]!) {
      missileLoaded = true;
    } else {
      if (missileLoaded) {
        missileManager.createMissile(ship);
        missileLoaded = false;
      }
    }

    for (final star in starDust) {
      star.twinkle(ship);
    }

    for (final missile in missileManager.missiles) {
      if (!missile.isAvailable) {
        for (final asteroid in asteroidManager.asteroids) {
          if (!asteroid.isAvailable) {
            if (asteroid.hitTest(missile.x, missile.y)) {
              missile.destroy();
              if (asteroid.size == AsteroidSize.large) {
                for (var _ = 0; _ < 4; _++) {
                  asteroidManager.createAsteroid(
                    asteroid.x,
                    asteroid.y,
                    AsteroidSize.medium,
                  );
                }
              } else if (asteroid.size == AsteroidSize.medium) {
                for (var _ = 0; _ < 3; _++) {
                  asteroidManager.createAsteroid(
                    asteroid.x,
                    asteroid.y,
                    AsteroidSize.small,
                  );
                }
              }
              fragmentManager.createFragments(asteroid);
              asteroid.destroy();
              break;
            }
          }
        }
      }
    }

    ship.animate(ship.x, ship.y);
    asteroidManager.animateAllAsteroids(ship.x, ship.y);
    fragmentManager.animateAllFragments(ship.x, ship.y);
    missileManager.animateAllMissiles(ship.x, ship.y);
  }
}

void main() {
  web.document
      .querySelector("#container")!
      .appendChild(Game().container.svgElement);
}
