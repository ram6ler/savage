abstract class StrokeLinecap {
  static const butt = "butt", round = "round", square = "square";
}

abstract class StrokeLineJoin {
  static const arcs = "arcs",
      bevel = "bevel",
      miter = "miter",
      miterClip = "miter-clip",
      round = "round";
}

abstract class FillRule {
  static const nonZero = "nonzero", evenOdd = "evenodd";
}

abstract class LengthAdjust {
  static const spacing = "spacing", spacingAndGlyphs = "spacingAndGlyphs";
}

abstract class TurbulenceType {
  static const turbulence = "turbulence", noise = "noise";
}

abstract class StitchType {
  static const stitch = "stitch", noStitch = "noStitch";
}

abstract class FilterUnits {
  static const userSpaceOnUse = "userSpaceOnUse",
      objectBoundingBox = "objectBoundingBox";
}

abstract class PatternUnits {
  static const userSpaceOnUse = "userSpaceOnUse",
      objectBoundingBox = "objectBoundingBox";
}

abstract class Builder {
  StringBuffer get _result;
  @override
  String toString() => _result.toString().trim();
}

class TransformBuilder extends Builder {
  final _result = StringBuffer();
  void translate(num x, num y) => _result.write("translate($x $y) ");
  void scale(num sx, num? sy) => _result.write("scale($sx ${sy ?? sx})");
  void rotate(num degrees) => _result.write("rotate($degrees)");
  void skewX(num skew) => _result.write("skewX($skew)");
  void skeyY(num skew) => _result.write("skewY($skew)");
  void matrix(num a, num b, num c, num d, num e, num f) => _result.write(
      "matrix(${[a, b, c, d, e, f].map((x) => x.toString()).join(" ")}))");
  @override
  String toString() => _result.toString().trim();
}

class PointsBuilder {
  final _points = <(num, num)>[];
  void addPoint(num x, num y) => _points.add((x, y));
  void addPoints(Iterable<(num, num)> points) => _points.addAll(points);
  @override
  String toString() => [for (final (x, y) in _points) "$x,$y"].join(" ");
}

class PathBuilder extends Builder {
  final _result = StringBuffer();

  /// Clears the current path.
  void refresh() => _result.clear();

  void moveTo(
    num x,
    num y,
  ) =>
      _result.write("M $x $y ");

  void relativeMoveTo(
    num dx,
    num dy,
  ) =>
      _result.write("m $dx $dy ");

  void lineTo(
    num x,
    num y,
  ) =>
      _result.write("L $x $y ");

  void relativeLineTo(
    num dx,
    num dy,
  ) =>
      _result.write("l $dx $dy ");

  void horizontalLineTo(
    num y,
  ) =>
      _result.write("H $y ");

  void relativeHorizontalLineTo(
    num dy,
  ) =>
      _result.write("h $dy ");

  void verticalLineTo(
    num x,
  ) =>
      _result.write("V $x ");

  void relativeVerticalLineTo(
    num dx,
  ) =>
      _result.write("v $dx ");

  void cubicBezierTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num x,
    num y,
  ) =>
      _result.write("C $x1 $y1 $x2 $y2 $x $y ");

  void implicitCubicBezierTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num x,
    num y,
  ) =>
      _result.write("c $x1 $y1 $x2 $y2 $x $y ");

  void smoothCubicBezierTo(
    num x2,
    num y2,
    num x,
    num y,
  ) =>
      _result.write("S $x2 $y2 $x $y ");

  void implicitSmoothRelativeCubicBezierTo(
    num x2,
    num y2,
    num x,
    num y,
  ) =>
      _result.write("s $x2 $y2 $x $y ");

  void quadraticBezierTo(
    num x1,
    num y1,
    num x,
    num y,
  ) =>
      _result.write("Q $x1 $y1 $x $y ");

  void implicitQuadraticBezierTo(
    num x1,
    num y1,
    num x,
    num y,
  ) =>
      _result.write("q $x1 $y1 $x $y ");

  void smoothQuadraticBezierTo(
    num x,
    num y,
  ) =>
      _result.write("T $x $y ");

  void implicitSmoothRelativeQuadraticBezierTo(
    num x,
    num y,
  ) =>
      _result.write("t $x $y ");

  void arcTo(
    num rx,
    num ry,
    num angle,
    num largeArcFlag,
    num sweepFlag,
    num x,
    num y,
  ) =>
      _result.write("A $rx $ry $angle $largeArcFlag $sweepFlag $x $y ");

  void implicitArcTo(
    num rx,
    num ry,
    num angle,
    num largeArcFlag,
    num sweepFlag,
    num x,
    num y,
  ) =>
      _result.write("a $rx $ry $angle $largeArcFlag $sweepFlag $x $y ");

  void closePath() => _result.write("z ");
}

class ViewBox {
  num topLeftX, topLeftY, width, height;

  ViewBox({
    required this.topLeftX,
    required this.topLeftY,
    required this.width,
    required this.height,
  });

  @override
  String toString() => "$topLeftX $topLeftY $width $height";
}

abstract class BlendMode {
  static const normal = "normal",
      multiply = "multiply",
      screen = "screen",
      overlay = "overlay",
      darken = "darken",
      lighten = "lighten",
      colorDodge = "color-dodge",
      colorBurn = "color-burn",
      hardLight = "hard-light",
      softLight = "soft-light",
      difference = "difference",
      exclusion = "exclusion",
      hue = "hue",
      saturation = "saturation",
      color = "color",
      luminosity = "liminosity";
}

abstract class FilterInput {
  static const sourceGraphic = "SourceGraphic",
      sourceAlpha = "SourceAlpha",
      backgroundImage = "BackgroundImage",
      backgroundAlpha = "BackgroundAlpha",
      fillPaint = "FillPaint",
      strokePaint = "StrokePaint";
}

abstract class FilterMatrixType {
  static const matrix = "matrix",
      saturate = "saturate",
      hueRotate = "hueRotate",
      luminanceToAlpha = "luminanceToAlpha";
}

abstract class FilterFunctionType {
  static const identity = "identity",
      table = "table",
      discrete = "discrete",
      linear = "linear",
      gamma = "gamma";
}

abstract class FilterCompositeOperator {
  static const over = "over",
      into = "in",
      out = "out",
      atop = "atop",
      xor = "xor",
      lighter = "lighter",
      arithmetic = "arithmetic";
}

abstract class FilterEdgeMode {
  static const duplicate = "duplicate", wrap = "wrap", none = "none";
}

abstract class FulterUnits {
  static const userSpaceOnUse = "userSpaceOnUse",
      objectBoundingBox = "objectBoundingBox";
}
