import "dart:async" show Timer;

import "package:web/web.dart" as web;
import "package:savage/savage_web.dart";

void main() {
  {
    // Gingerbread man
    final svg = SVG(
      width: "100",
      height: "100",
      viewBox: "-100 -100 200 200",
      children: [
        Circle(
          cx: "0",
          cy: "-50",
          r: "30",
          stroke: "none",
          fill: "#cd803d",
        ),
        Circle(
          cx: "-12",
          cy: "-55",
          r: "3",
          stroke: "none",
          fill: "white",
        ),
        Circle(
          cx: "12",
          cy: "-55",
          r: "3",
          stroke: "none",
          fill: "white",
        ),
        Rect(
          x: "-10",
          y: "-40",
          width: "20",
          height: "5",
          rx: "2",
          fill: "none",
          stroke: "white",
          strokeWidth: "2",
        ),
        Line(
            x1: "-40",
            y1: "-10",
            x2: "40",
            y2: "-10",
            stroke: "#cd803d",
            strokeWidth: "35",
            strokeLinecap: StrokeLinecap.round),
        Line(
            x1: "-25",
            y1: "50",
            x2: "0",
            y2: "-15",
            stroke: "#cd803d",
            strokeWidth: "35",
            strokeLinecap: StrokeLinecap.round),
        Line(
            x1: "25",
            y1: "50",
            x2: "0",
            y2: "-15",
            stroke: "#cd803d",
            strokeWidth: "35",
            strokeLinecap: StrokeLinecap.round),
        Circle(
          cx: "0",
          cy: "-10",
          r: "5",
          stroke: "none",
          fill: "black",
        ),
        Circle(
          cx: "0",
          cy: "10",
          r: "5",
          stroke: "none",
          fill: "black",
        ),
      ],
    );

    web.document.querySelector("#container")!.appendChild(svg.svgElement);
  }

  {
    // Heart
    final svg = SVG(
      width: "100",
      height: "100",
      viewBox: "-100 -100 200 200",
      children: [
        Path(
          d: (PathBuilder()
                ..moveTo(-30, -20)
                ..lineTo(0, 10)
                ..lineTo(30, -20))
              .toString(),
          fill: "none",
          stroke: "red",
          strokeWidth: "80",
          strokeLinecap: StrokeLinecap.round,
          strokeLinejoin: StrokeLinejoin.miter,
        ),
      ],
    );
    web.document.querySelector("#container")!.appendChild(svg.svgElement);
  }

  {
    // Smiley
    web.document.querySelector("#container")!
      ..appendChild(
        (SVG(
          width: "100",
          height: "100",
          viewBox: "-100 -100 200 200",
          children: [
            Circle(
              cx: "0",
              cy: "0",
              r: "90",
              fill: "none",
              stroke: "black",
              strokeWidth: "10",
            ),
            Ellipse(
              cx: "-25",
              cy: "-25",
              rx: "10",
              ry: "15",
              stroke: "none",
              fill: "black",
            ),
            Ellipse(
              cx: "25",
              cy: "-25",
              rx: "10",
              ry: "15",
              stroke: "none",
              fill: "black",
            ),
            Path(
                d: (PathBuilder()
                      ..moveTo(-40, 30)
                      ..quadraticBezierTo(0, 60, 40, 30))
                    .toString(),
                fill: "none",
                stroke: "black",
                strokeWidth: "10",
                strokeLinecap: StrokeLinecap.round),
          ],
        )).svgElement,
      );
  }

  {
    // Sun
    web.document.querySelector("#container")!
      ..appendChild(
        (SVG(
          id: "sun",
          width: "100",
          height: "100",
          viewBox: "-15 -15 30 30",
          children: [
            Circle(
              cx: "0",
              cy: "0",
              r: "6",
              fill: "orange",
              stroke: "none",
            ),
            Line(
              id: "ray",
              stroke: "orange",
              strokeWidth: "2",
              strokeLinecap: StrokeLinecap.round,
              x1: "0",
              y1: "8",
              x2: "0",
              y2: "14",
            ),
            ...[
              for (final rotate in [45, 90, 135, 180, 225, 270, 315])
                Use(
                  href: "#ray",
                  transform: "rotate($rotate)",
                )
            ]
          ],
        )).svgElement,
      );
  }

  {
    // Trees
    web.document.querySelector("#container")!
      ..appendChild(
        (SVG(
          width: "100",
          height: "100",
          viewBox: "-100 -100 200 200",
          children: [
            Defs(children: [
              G(
                id: "tree",
                children: [
                  Polygon(
                    points: "-10,0 10,0 0,-50",
                    fill: "#36755b",
                  ),
                  Line(
                    x1: "0",
                    y1: "0",
                    x2: "0",
                    y2: "10",
                    stroke: "#778074",
                    strokeWidth: "2",
                  ),
                ],
              )
            ]),
            Rect(
              x: "-100",
              y: "-100",
              width: "200",
              height: "200",
              fill: "#f1dbc3",
            ),
            Circle(
              cx: "0",
              cy: "380",
              r: "350",
              fill: "#f8f4e8",
            ),
            ...[
              for (final (x, y, s) in [
                (-30, 25, 2),
                (-20, 40, 1.2),
                (40, 40, 1.0),
                (50, 30, 1.5)
              ])
                Use(
                  href: "#tree",
                  x: "$x",
                  y: "$y",
                  transform: "scale($s)",
                )
            ]
          ],
        )).svgElement,
      );
  }

  {
    // Path proportions
    final circle = Circle(
          cx: "50",
          cy: "50",
          r: "40",
          stroke: "blue",
          fill: "none",
        ),
        svg = SVG(
          width: "100",
          height: "100",
          viewBox: "0 0 100 100",
          children: [circle],
        );

    web.document.querySelector("#container")!..appendChild(svg.svgElement);

    final splits = 9;
    for (var i = 0; i < splits; i++) {
      final (x, y) = Points.getPointAtProportion(circle, i / splits);

      svg.appendChild(
        Line(
          x1: "50",
          y1: "50",
          x2: x.toString(),
          y2: y.toString(),
          stroke: "#0003",
        ),
      );
    }
  }

  {
    // Windmill
    web.document.querySelector("#container")!
      ..appendChild((SVG(
          width: "100",
          height: "100",
          viewBox: "-100 -100 200 200",
          children: [
            Defs(
              children: [
                Path(
                    id: "arm",
                    d: (PathBuilder()
                          ..moveTo(-7, -20)
                          ..cubicBezierTo(-7, -10, 7, -10, 7, -20)
                          ..lineTo(2, -80)
                          ..lineTo(-2, -80))
                        .toString(),
                    children: [
                      AnimateTransform(
                        attributeName: "transform",
                        type: "rotate",
                        begin: "0s",
                        dur: "10s",
                        from: "0",
                        to: "359",
                        repeatCount: "indefinite",
                      ),
                    ]),
              ],
            ),
            Circle(
              cx: "0",
              cy: "0",
              r: "8",
              fill: "gray",
              stroke: "none",
            ),
            Use(
              href: "#arm",
              fill: "purple",
              stroke: "none",
            ),
            Use(
              href: "#arm",
              fill: "orange",
              stroke: "none",
              transform: "rotate(120)",
            ),
            Use(
              href: "#arm",
              fill: "limegreen",
              stroke: "none",
              transform: "rotate(-120)",
            )
          ])).svgElement);
  }

  {
    // Infinity

    final builder = PathBuilder()
      ..moveTo(20, 50)
      ..cubicBezierTo(20, -50, 180, 150, 180, 50)
      ..cubicBezierTo(180, -50, 20, 150, 20, 50)
      ..closePath();

    web.document.querySelector("#container")!
      ..appendChild(
        (SVG(
          width: "100",
          height: "100",
          viewBox: "0 0 200 100",
          children: [
            Path(
              d: builder.toString(),
              fill: "none",
              stroke: "lightgray",
              strokeWidth: "3",
            ),
            Circle(r: "5", fill: "red", children: [
              AnimateMotion(
                path: builder.toString(),
                dur: "10s",
                repeatCount: "indefinite",
              )
            ])
          ],
        ).svgElement),
      );
  }

  {
    // Clock
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
          id: "hour_line",
          x1: "-15",
          y1: "0",
          x2: "60",
          y2: "0",
          stroke: "black",
          strokeWidth: "10",
        ),
        minuteHand = Line(
          id: "hour_hand",
          x1: "-15",
          x2: "80",
          y1: "0",
          y2: "0",
          stroke: "black",
          strokeWidth: "6",
        ),
        secondHand = Line(
          id: "minute_hand",
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

  {
    final svg = buildFromSVGElement(
        web.document.querySelector("#smile")! as web.SVGElement) as SVG;
    print(svg.svgElement.outerHTML);
  }
}
