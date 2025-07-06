import "package:savage/savage_io.dart";

void main() {
  // See:
  // https://developer.mozilla.org/en-US/docs/Web/SVG/Element/feTurbulence

  final splotch = SVG(
    width: "200",
    height: "200",
    viewBox: (ViewBox(
      topLeftX: 0,
      topLeftY: 0,
      width: 220,
      height: 220,
    )).toString(),
    children: [
      Filter(
        id: "displace",
        children: [
          FETurbulence(
            turbulenceType: TurbulenceType.turbulence,
            baseFrequency: "0.05",
            numOctaves: "2",
            result: "turbulence",
          ),
          FEDisplacementMap(
            input: FilterInput.sourceGraphic,
            input2: "turbulence",
            scale: "50",
            xChannelSelector: "R",
            yChannelSelector: "G",
          )
        ],
      ),
      Circle(
        cx: "100",
        cy: "100",
        r: "100",
        filter: "url(#displace)",
      ),
    ],
  );

  splotch.writeToFile("images/splotch.svg");
}
