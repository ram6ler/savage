import "package:savage/savage_io.dart";

void main() {
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
                rx: "4",
                ry: "4",
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
        strokeLinejoin: StrokeLineJoin.round,
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

  ghost.writeToFile("images/ghost.svg");
}
