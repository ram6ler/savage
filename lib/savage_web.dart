/// A thin layer over *package:web* to simplify creating and
/// working with SVG elements in an HTML or SVG document.
library;

export "src/helpers/completers.dart";
export "src/helpers/setters.dart";

export "src/savage_web/helpers/points.dart";
export "src/savage_web/elements/base_wrapper.dart" show BaseWrapper;
export "src/savage_web/elements/wrappers.dart";
export "src/savage_web/builder/builder.dart"
    show buildFromSVGElement, buildFromID;
