import "package:web/web.dart" as web;
import "../elements/base_wrapper.dart" show BaseWrapper;

abstract class Points {
  /// Returns the coordinates of the point at distance `length` through
  /// the path. (Assumes that `element` wraps a geometric SVG element.)
  static (num, num) getPointAtLength(BaseWrapper element, num length) {
    final p =
        (element.svgElement as web.SVGGeometryElement).getPointAtLength(length);
    return (p.x, p.y);
  }

  /// Returns the coordinates of the point at proportion `proportion` through
  /// the path. (Assumes that `element` wraps a geometric SVG element.)
  static (num, num) getPointAtProportion(BaseWrapper element, num proportion) {
    final totalLength =
            (element.svgElement as web.SVGGeometryElement).getTotalLength(),
        p = (element.svgElement as web.SVGGeometryElement)
            .getPointAtLength(proportion * totalLength);
    return (p.x, p.y);
  }
}
