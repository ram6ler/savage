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
