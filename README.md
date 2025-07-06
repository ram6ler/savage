
# Savage

Welcome to *savage*, a library to simplify creating and working with svg elements.

The library contains two packages, namely *savage_io*, for creating and manipulating svg documents from the back end, and *savage_web*, for creating and manipulating svg elements in an html or svg document.

## *savage_io*

For example, let's create a pacman ghost. After importing *"package:savage/savage_io.dart*, we can create the ghost using:

```dart
final ghost = SVG(
  width: "100",
  height: "100",
  viewBox: ViewBox(
    topLeftX: -50,
    topLeftY: -50,
    width: 100,
    height: 100,
  ).toString(),
  children: [
    Defs(
      children: [
        RadialGradient(
          id: "gradient",
          cx: "15%",
          cy: "40%",
          r: "90%",
          children: [
            Stop(
              offset: "0%",
              stopColor: "white",
            ),
            Stop(
              offset: "100%",
              stopColor: "orange",
            ),
          ],
        ),
        G(
          id: "eye",
          children: [
            Rect(
              x: "-5",
              y: "-8",
              width: "10",
              height: "14",
              rx: "2",
              ry: "2",
              stroke: "none",
              fill: "black",
            ),
            Rect(
              x: "-3",
              y: "-6",
              width: "3",
              height: "6",
              rx: "1",
              ry: "1",
              stroke: "none",
              fill: "white",
            )
          ],
        ),
      ],
    ),
    Path(
      d: (PathBuilder()
            ..moveTo(-30, -15)
            ..cubicBezierTo(-30, -50, 30, -50, 30, -15)
            ..lineTo(30, 30)
            ..cubicBezierTo(30, 45, 10, 45, 10, 30)
            ..cubicBezierTo(10, 45, -10, 45, -10, 30)
            ..cubicBezierTo(-10, 45, -30, 45, -30, 30)
            ..closePath())
          .toString(),
      stroke: "black",
      strokeWidth: "2",
      strokeLinejoin: StrokeLinejoin.round,
      fill: "url(#gradient)",
      children: [LinearGradient(x1: "-10", x2: "-10")],
    ),
    Use(
      href: "#eye",
      transform: (TransformBuilder()..translate(-20, -4)).toString(),
    ),
    Use(
      href: "#eye",
      transform: (TransformBuilder()..translate(0, -4)).toString(),
    ),
  ],
);
```

At this point we can get save the SVG document to file:

```dart
ghost.writeToFile("images/ghost.svg");
```

Now, if we open *images/ghost.svg*, we can see the saved svg document.

The *savage_io* package also contains a *parseSVG* function that allows us to reverse-build the above structure from an SVG file. For example:

```dart
import "dart:io";
import "package:savage/savage_io.dart";

main() async {
  const path = "images/ghost.svg";
  final file = File(path);
  if (await file.exists()) {
    final ghost = parseSVG(await file.readAsString());
    // TODO: Something with ghost.
  }
}
```

## *savage_web*

The *savage_web* package works similarly to *savage_io*, except the classes form wrappers over SVG elements in the web page (which can be accessed through the *svgElement* property).

For example, instead of importing *package:savage/savage_io.dart*, import *package:savage/savage_web.dart* (and importing *package:web/web.dart* as *web*), and define *ghost* exactly as in the above example. We can then add the ghost element to an existing element (say a div) with id *container* using:

```dart
web.document.querySelector("#container")!.appendChild(ghost.svgElement);
```

Of course, this gives us access to the elements in the rest of our code.

As another example, here is a complete implementation of a ticking clock that shows the current time. 

```dart
import "dart:async" show Timer;
import "package:web/web.dart" as web;
import "package:savage/savage_web.dart";

main() {
  final svg = SVG(
        width: "200",
        height: "200",
        viewBox: "-100 -100 200 200",
        children: [
          for (var i = 0; i < 12; i++)
            Line(
              x1: "80",
              y1: "0",
              x2: "90",
              y2: "0",
              stroke: "black",
              strokeWidth: "1",
              transform: "rotate(${i * 360 / 12})",
            )
        ],
      ),
      hourHand = Line(
        x1: "-15",
        y1: "0",
        x2: "60",
        y2: "0",
        stroke: "black",
        strokeWidth: "10",
      ),
      minuteHand = Line(
        x1: "-15",
        x2: "80",
        y1: "0",
        y2: "0",
        stroke: "black",
        strokeWidth: "6",
      ),
      secondHand = Line(
        x1: "-15",
        x2: "80",
        y1: "0",
        y2: "0",
        stroke: "red",
        strokeWidth: "3",
      );

  svg.appendChildren([
    minuteHand,
    hourHand,
    secondHand,
    Circle(
      cx: "0",
      cy: "0",
      r: "6",
      fill: "black",
      stroke: "white",
      strokeWidth: "1",
    ),
  ]);

  Timer.periodic(Duration(milliseconds: 500), (_) {
    final now = DateTime.now();
    hourHand.transform = "rotate(${-90 + (now.hour % 12) / 12 * 360})";
    minuteHand.transform = "rotate(${-90 + now.minute / 60 * 360})";
    secondHand.transform = "rotate(${-90 + now.second / 60 * 360})";
  });

  web.document.querySelector("#container")!.appendChild(svg.svgElement);
}

```

Thanks for your interest in this package. Please [file issues and requests here](https://github.com/ram6ler/savage/issues).