// Generated code: do not edit directly.
// See tool/README.md for more information.

import "package:web/web.dart" as web;
import "../helpers/helpers.dart" as help;
import "mixins.dart";
import "base_wrapper.dart";

/// A wrapper for *SVGAElement*.
class A extends BaseWrapper with BaseAttributes, ReferenceAttributes {
  A({
    String? filter,
    String? href,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "a",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (href != null) {
      this.href = href;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGAnimateElement*.
class Animate extends BaseWrapper with AnimationAttributes, BaseAttributes {
  Animate({
    String? attributeName,
    String? begin,
    String? dur,
    String? filter,
    String? from,
    String? id,
    String? lang,
    String? repeatCount,
    String? tabIndex,
    String? to,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "animate",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (attributeName != null) {
      this.attributeName = attributeName;
    }
    if (begin != null) {
      this.begin = begin;
    }
    if (dur != null) {
      this.dur = dur;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (from != null) {
      this.from = from;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (repeatCount != null) {
      this.repeatCount = repeatCount;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (to != null) {
      this.to = to;
    }
  }
}

/// A wrapper for *SVGAnimateMotionElement*.
class AnimateMotion extends BaseWrapper
    with AnimationAttributes, BaseAttributes {
  AnimateMotion({
    String? attributeName,
    String? begin,
    String? dur,
    String? filter,
    String? from,
    String? id,
    String? lang,
    String? path,
    String? repeatCount,
    String? tabIndex,
    String? to,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "animateMotion",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (attributeName != null) {
      this.attributeName = attributeName;
    }
    if (begin != null) {
      this.begin = begin;
    }
    if (dur != null) {
      this.dur = dur;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (from != null) {
      this.from = from;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (path != null) {
      this.path = path;
    }
    if (repeatCount != null) {
      this.repeatCount = repeatCount;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (to != null) {
      this.to = to;
    }
  }

  /// The path directions.
  /// Use `PathBuilder` to set the value.
  String get path => this["path"];
  void set path(String value) => this["path"] = value;
}

/// A wrapper for *SVGAnimateTransformElement*.
class AnimateTransform extends BaseWrapper
    with AnimationAttributes, BaseAttributes {
  AnimateTransform({
    String? attributeName,
    String? begin,
    String? dur,
    String? filter,
    String? from,
    String? id,
    String? lang,
    String? repeatCount,
    String? tabIndex,
    String? to,
    String? type,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "animateTransform",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (attributeName != null) {
      this.attributeName = attributeName;
    }
    if (begin != null) {
      this.begin = begin;
    }
    if (dur != null) {
      this.dur = dur;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (from != null) {
      this.from = from;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (repeatCount != null) {
      this.repeatCount = repeatCount;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (to != null) {
      this.to = to;
    }
    if (type != null) {
      this.type = type;
    }
  }

  /// The transformation type.
  String get type => this["type"];
  void set type(String value) => this["type"] = value;
}

/// A wrapper for *SVGCircleElement*.
class Circle extends BaseWrapper
    with
        BaseAttributes,
        CenterAttributes,
        ClipMaskAttributes,
        FillAttributes,
        RadiusAttributes,
        StrokeAttributes,
        TransformAttributes {
  Circle({
    String? clipPath,
    String? cx,
    String? cy,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? id,
    String? lang,
    String? mask,
    String? r,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "circle",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (cx != null) {
      this.cx = cx;
    }
    if (cy != null) {
      this.cy = cy;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (r != null) {
      this.r = r;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
  }
}

/// A wrapper for *SVGClipPathElement*.
class ClipPath extends BaseWrapper with BaseAttributes {
  ClipPath({
    String? filter,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "clipPath",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGDefsElement*.
class Defs extends BaseWrapper with BaseAttributes {
  Defs({
    String? filter,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "defs",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGDescElement*.
class Desc extends BaseWrapper with BaseAttributes {
  Desc({
    String? filter,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "desc",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGEllipseElement*.
class Ellipse extends BaseWrapper
    with
        BaseAttributes,
        CenterAttributes,
        ClipMaskAttributes,
        FillAttributes,
        StrokeAttributes,
        TransformAttributes {
  Ellipse({
    String? clipPath,
    String? cx,
    String? cy,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? id,
    String? lang,
    String? mask,
    String? rx,
    String? ry,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "ellipse",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (cx != null) {
      this.cx = cx;
    }
    if (cy != null) {
      this.cy = cy;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (rx != null) {
      this.rx = rx;
    }
    if (ry != null) {
      this.ry = ry;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
  }

  /// The horizontal radius.
  String get rx => this["rx"];
  void set rx(String value) => this["rx"] = value;

  /// The vertical radius
  String get ry => this["ry"];
  void set ry(String value) => this["ry"] = value;
}

/// A wrapper for *SVGFEBlendElement*.
class FEBlend extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FEBlend({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? input2,
    String? lang,
    String? mode,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feBlend",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (input2 != null) {
      this.input2 = input2;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (mode != null) {
      this.mode = mode;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// Filter input.
  /// Use `FilterInput` to set the value.
  String get input2 => this["in2"];
  void set input2(String value) => this["in2"] = value;

  /// The blend mode.
  /// Use `BlendMode` to set the value.
  String get mode => this["mode"];
  void set mode(String value) => this["mode"] = value;
}

/// A wrapper for *SVGFEColorMatrixElement*.
class FEColorMatrix extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FEColorMatrix({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? matrixType,
    String? result,
    String? tabIndex,
    String? values,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feColorMatrix",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (matrixType != null) {
      this.matrixType = matrixType;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (values != null) {
      this.values = values;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// Values input type.
  /// Use `FilterMatrixType` to set the value.
  String get matrixType => this["type"];
  void set matrixType(String value) => this["type"] = value;

  /// Values for the specified matrix type.
  String get values => this["values"];
  void set values(String value) => this["values"] = value;
}

/// A wrapper for *SVGFEComponentTransferElement*.
class FEComponentTransfer extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FEComponentTransfer({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feComponentTransfer",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFECompositeElement*.
class FEComposite extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterOperatorAttributes,
        PositionAttributes {
  FEComposite({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? input2,
    String? k1,
    String? k2,
    String? k3,
    String? k4,
    String? lang,
    String? operator,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feComposite",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (input2 != null) {
      this.input2 = input2;
    }
    if (k1 != null) {
      this.k1 = k1;
    }
    if (k2 != null) {
      this.k2 = k2;
    }
    if (k3 != null) {
      this.k3 = k3;
    }
    if (k4 != null) {
      this.k4 = k4;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (operator != null) {
      this.operator = operator;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// Filter input.
  /// Use `FilterInput` to set the value.
  String get input2 => this["in2"];
  void set input2(String value) => this["in2"] = value;

  /// Value used for arithmetic operator.
  String get k1 => this["k1"];
  void set k1(String value) => this["k1"] = value;

  /// Value used for arithmetic operator.
  String get k2 => this["k2"];
  void set k2(String value) => this["k2"] = value;

  /// Value used for arithmetic operator.
  String get k3 => this["k3"];
  void set k3(String value) => this["k3"] = value;

  /// Value used for arithmetic operator.
  String get k4 => this["k4"];
  void set k4(String value) => this["k4"] = value;
}

/// A wrapper for *SVGFEConvolveMatrixElement*.
class FEConvolveMatrix extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterEdgeModeAttributes,
        PositionAttributes {
  FEConvolveMatrix({
    String? bias,
    String? divisor,
    String? edgeMode,
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? kernelMatrix,
    String? lang,
    String? order,
    String? preserveAlpha,
    String? result,
    String? tabIndex,
    String? targetX,
    String? targetY,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feConvolveMatrix",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (bias != null) {
      this.bias = bias;
    }
    if (divisor != null) {
      this.divisor = divisor;
    }
    if (edgeMode != null) {
      this.edgeMode = edgeMode;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (kernelMatrix != null) {
      this.kernelMatrix = kernelMatrix;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (order != null) {
      this.order = order;
    }
    if (preserveAlpha != null) {
      this.preserveAlpha = preserveAlpha;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (targetX != null) {
      this.targetX = targetX;
    }
    if (targetY != null) {
      this.targetY = targetY;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The convolution bias.
  String get bias => this["bias"];
  void set bias(String value) => this["bias"] = value;

  /// The convolution divisor.
  String get divisor => this["divisor"];
  void set divisor(String value) => this["divisor"] = value;

  /// The convolution matrix.
  String get kernelMatrix => this["kernelMatrix"];
  void set kernelMatrix(String value) => this["kernelMatrix"] = value;

  /// The matrix order.
  String get order => this["order"];
  void set order(String value) => this["order"] = value;

  /// Whether to preserve the alpha setting (*true* or *false*).
  String get preserveAlpha => this["preserveAlpha"];
  void set preserveAlpha(String value) => this["preserveAlpha"] = value;

  /// The horizontal positioning of the convolution.
  String get targetX => this["targetX"];
  void set targetX(String value) => this["targetX"] = value;

  /// The vertical positioning of the convolution.
  String get targetY => this["targetY"];
  void set targetY(String value) => this["targetY"] = value;
}

/// A wrapper for *SVGFEDiffuseLightingElement*.
class FEDiffuseLighting extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterSurfaceScaleAttributes,
        LightingAttributes,
        PositionAttributes {
  FEDiffuseLighting({
    String? diffuseConstant,
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? lightingColor,
    String? result,
    String? surfaceScale,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "fediffuselighting",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (diffuseConstant != null) {
      this.diffuseConstant = diffuseConstant;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (lightingColor != null) {
      this.lightingColor = lightingColor;
    }
    if (result != null) {
      this.result = result;
    }
    if (surfaceScale != null) {
      this.surfaceScale = surfaceScale;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// Diffuse lighting constant.
  String get diffuseConstant => this["diffuseConstant"];
  void set diffuseConstant(String value) => this["diffuseConstant"] = value;
}

/// A wrapper for *SVGFEDisplacementMapElement*.
class FEDisplacementMap extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FEDisplacementMap({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? input2,
    String? lang,
    String? result,
    String? scale,
    String? tabIndex,
    String? width,
    String? x,
    String? xChannelSelector,
    String? y,
    String? yChannelSelector,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feDisplacementMap",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (input2 != null) {
      this.input2 = input2;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (scale != null) {
      this.scale = scale;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (xChannelSelector != null) {
      this.xChannelSelector = xChannelSelector;
    }
    if (y != null) {
      this.y = y;
    }
    if (yChannelSelector != null) {
      this.yChannelSelector = yChannelSelector;
    }
  }

  /// Filter input.
  /// Use `FilterInput` to set the value.
  String get input2 => this["in2"];
  void set input2(String value) => this["in2"] = value;

  /// Displacement scale factor.
  String get scale => this["scale"];
  void set scale(String value) => this["scale"] = value;

  /// Which color channel from in2 to use to displace the pixels in in along the x-axis; *R*, *G*, *B* or (default) *A*.
  String get xChannelSelector => this["xChannelSelector"];
  void set xChannelSelector(String value) => this["xChannelSelector"] = value;

  /// Which color channel from in2 to use to displace the pixels in in along the y-axis; *R*, *G*, *B* or (default) *A*.
  String get yChannelSelector => this["yChannelSelector"];
  void set yChannelSelector(String value) => this["yChannelSelector"] = value;
}

/// A wrapper for *SVGFEDistantLightElement*.
class FEDistantLight extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        LightingAttributes,
        PositionAttributes {
  FEDistantLight({
    String? azimuth,
    String? elevation,
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? lightingColor,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feDistantLight",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (azimuth != null) {
      this.azimuth = azimuth;
    }
    if (elevation != null) {
      this.elevation = elevation;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (lightingColor != null) {
      this.lightingColor = lightingColor;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The direction angle for the light source on the XY plane (clockwise), in degrees from the x axis.
  String get azimuth => this["azimuth"];
  void set azimuth(String value) => this["azimuth"] = value;

  /// The direction angle for the light source from the XY plane towards the Z-axis, in degrees.
  String get elevation => this["elevation"];
  void set elevation(String value) => this["elevation"] = value;
}

/// A wrapper for *SVGFEDropShadowElement*.
class FEDropShadow extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterStandardDeviationAttributes,
        OffsetAttributes,
        PositionAttributes {
  FEDropShadow({
    String? dx,
    String? dy,
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? stdDeviation,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feDropShadow",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (dx != null) {
      this.dx = dx;
    }
    if (dy != null) {
      this.dy = dy;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (stdDeviation != null) {
      this.stdDeviation = stdDeviation;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFEFloodElement*.
class FEFlood extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FEFlood({
    String? filter,
    String? filterUnits,
    String? floodColor,
    String? floodOpacity,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feFlood",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (floodColor != null) {
      this.floodColor = floodColor;
    }
    if (floodOpacity != null) {
      this.floodOpacity = floodOpacity;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The color with which to flood the current filter subregion.
  String get floodColor => this["flood-color"];
  void set floodColor(String value) => this["flood-color"] = value;

  /// The opacity of the color with which to flood the current filter subregion.
  String get floodOpacity => this["flood-opacity"];
  void set floodOpacity(String value) => this["flood-opacity"] = value;
}

/// A wrapper for *SVGFEFuncAElement*.
class FEFuncA extends BaseWrapper
    with BaseAttributes, FilterAttributes, FilterFunctionAttributes {
  FEFuncA({
    String? amplitude,
    String? exponent,
    String? filter,
    String? filterUnits,
    String? functionType,
    String? id,
    String? input,
    String? lang,
    String? offset,
    String? result,
    String? slope,
    String? tabIndex,
    String? tableValues,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feFuncA",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (amplitude != null) {
      this.amplitude = amplitude;
    }
    if (exponent != null) {
      this.exponent = exponent;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (functionType != null) {
      this.functionType = functionType;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (offset != null) {
      this.offset = offset;
    }
    if (result != null) {
      this.result = result;
    }
    if (slope != null) {
      this.slope = slope;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (tableValues != null) {
      this.tableValues = tableValues;
    }
  }
}

/// A wrapper for *SVGFEFuncBElement*.
class FEFuncB extends BaseWrapper
    with BaseAttributes, FilterAttributes, FilterFunctionAttributes {
  FEFuncB({
    String? amplitude,
    String? exponent,
    String? filter,
    String? filterUnits,
    String? functionType,
    String? id,
    String? input,
    String? lang,
    String? offset,
    String? result,
    String? slope,
    String? tabIndex,
    String? tableValues,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feFuncB",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (amplitude != null) {
      this.amplitude = amplitude;
    }
    if (exponent != null) {
      this.exponent = exponent;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (functionType != null) {
      this.functionType = functionType;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (offset != null) {
      this.offset = offset;
    }
    if (result != null) {
      this.result = result;
    }
    if (slope != null) {
      this.slope = slope;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (tableValues != null) {
      this.tableValues = tableValues;
    }
  }
}

/// A wrapper for *SVGFEFuncGElement*.
class FEFuncG extends BaseWrapper
    with BaseAttributes, FilterAttributes, FilterFunctionAttributes {
  FEFuncG({
    String? amplitude,
    String? exponent,
    String? filter,
    String? filterUnits,
    String? functionType,
    String? id,
    String? input,
    String? lang,
    String? offset,
    String? result,
    String? slope,
    String? tabIndex,
    String? tableValues,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feFuncG",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (amplitude != null) {
      this.amplitude = amplitude;
    }
    if (exponent != null) {
      this.exponent = exponent;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (functionType != null) {
      this.functionType = functionType;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (offset != null) {
      this.offset = offset;
    }
    if (result != null) {
      this.result = result;
    }
    if (slope != null) {
      this.slope = slope;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (tableValues != null) {
      this.tableValues = tableValues;
    }
  }
}

/// A wrapper for *SVGFEFuncRElement*.
class FEFuncR extends BaseWrapper
    with BaseAttributes, FilterAttributes, FilterFunctionAttributes {
  FEFuncR({
    String? amplitude,
    String? exponent,
    String? filter,
    String? filterUnits,
    String? functionType,
    String? id,
    String? input,
    String? lang,
    String? offset,
    String? result,
    String? slope,
    String? tabIndex,
    String? tableValues,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feFuncR",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (amplitude != null) {
      this.amplitude = amplitude;
    }
    if (exponent != null) {
      this.exponent = exponent;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (functionType != null) {
      this.functionType = functionType;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (offset != null) {
      this.offset = offset;
    }
    if (result != null) {
      this.result = result;
    }
    if (slope != null) {
      this.slope = slope;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (tableValues != null) {
      this.tableValues = tableValues;
    }
  }
}

/// A wrapper for *SVGFEGaussianBlurElement*.
class FEGaussianBlur extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterEdgeModeAttributes,
        FilterStandardDeviationAttributes,
        PositionAttributes {
  FEGaussianBlur({
    String? edgeMode,
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? stdDeviation,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feGaussianBlur",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (edgeMode != null) {
      this.edgeMode = edgeMode;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (stdDeviation != null) {
      this.stdDeviation = stdDeviation;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFEImageElement*.
class FEImage extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes,
        ReferenceAttributes {
  FEImage({
    String? filter,
    String? filterUnits,
    String? height,
    String? href,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feImage",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (href != null) {
      this.href = href;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFEMergeElement*.
class FEMerge extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FEMerge({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feMerge",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFEMergeNodeElement*.
class FEMergeNode extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FEMergeNode({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feMergeNode",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFEMorphologyElement*.
class FEMorphology extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterOperatorAttributes,
        PositionAttributes {
  FEMorphology({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? operator,
    String? radius,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feMorphology",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (operator != null) {
      this.operator = operator;
    }
    if (radius != null) {
      this.radius = radius;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The radius for the operation.
  String get radius => this["radius"];
  void set radius(String value) => this["radius"] = value;
}

/// A wrapper for *SVGFEOffsetElement*.
class FEOffset extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        OffsetAttributes,
        PositionAttributes {
  FEOffset({
    String? dx,
    String? dy,
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feOffset",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (dx != null) {
      this.dx = dx;
    }
    if (dy != null) {
      this.dy = dy;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFEPointLightElement*.
class FEPointLight extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterZAttributes,
        PositionAttributes {
  FEPointLight({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    String? z,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "fePointLight",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
    if (z != null) {
      this.z = z;
    }
  }
}

/// A wrapper for *SVGFESpecularLightingElement*.
class FESpecularLighting extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterSpecularExponentAttributes,
        FilterSurfaceScaleAttributes,
        LightingAttributes,
        PositionAttributes {
  FESpecularLighting({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? lightingColor,
    String? result,
    String? specularConstant,
    String? specularExponent,
    String? surfaceScale,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feSpecularLighting",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (lightingColor != null) {
      this.lightingColor = lightingColor;
    }
    if (result != null) {
      this.result = result;
    }
    if (specularConstant != null) {
      this.specularConstant = specularConstant;
    }
    if (specularExponent != null) {
      this.specularExponent = specularExponent;
    }
    if (surfaceScale != null) {
      this.surfaceScale = surfaceScale;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The ratio of reflection of the specular lighting.
  String get specularConstant => this["specularConstant"];
  void set specularConstant(String value) => this["specularConstant"] = value;
}

/// A wrapper for *SVGFESpotLightElement*.
class FESpotLight extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        FilterSpecularExponentAttributes,
        FilterZAttributes,
        LightingAttributes,
        PositionAttributes {
  FESpotLight({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? lightingColor,
    String? limitingConeAngle,
    String? pointsAtX,
    String? pointsAtY,
    String? pointsAtZ,
    String? result,
    String? specularExponent,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    String? z,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feSpotLight",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (lightingColor != null) {
      this.lightingColor = lightingColor;
    }
    if (limitingConeAngle != null) {
      this.limitingConeAngle = limitingConeAngle;
    }
    if (pointsAtX != null) {
      this.pointsAtX = pointsAtX;
    }
    if (pointsAtY != null) {
      this.pointsAtY = pointsAtY;
    }
    if (pointsAtZ != null) {
      this.pointsAtZ = pointsAtZ;
    }
    if (result != null) {
      this.result = result;
    }
    if (specularExponent != null) {
      this.specularExponent = specularExponent;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
    if (z != null) {
      this.z = z;
    }
  }

  /// The angle in degrees between the spot light axis and the spot light cone.
  String get limitingConeAngle => this["limitingConeAngle"];
  void set limitingConeAngle(String value) => this["limitingConeAngle"] = value;

  /// The *x* coordinate of the spotlight's focus.
  String get pointsAtX => this["pointsAtX"];
  void set pointsAtX(String value) => this["pointsAtX"] = value;

  /// The *y* coordinate of the spotlight's focus.
  String get pointsAtY => this["pointsAtY"];
  void set pointsAtY(String value) => this["pointsAtY"] = value;

  /// The *z* coordinate of the spotlight's focus.
  String get pointsAtZ => this["pointsAtZ"];
  void set pointsAtZ(String value) => this["pointsAtZ"] = value;
}

/// A wrapper for *SVGFETileElement*.
class FETile extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FETile({
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feTile",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGFETurbulenceElement*.
class FETurbulence extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes {
  FETurbulence({
    String? baseFrequency,
    String? filter,
    String? filterUnits,
    String? height,
    String? id,
    String? input,
    String? lang,
    String? numOctaves,
    String? result,
    String? seed,
    String? stitchTiles,
    String? tabIndex,
    String? turbulenceType,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "feTurbulence",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (baseFrequency != null) {
      this.baseFrequency = baseFrequency;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (numOctaves != null) {
      this.numOctaves = numOctaves;
    }
    if (result != null) {
      this.result = result;
    }
    if (seed != null) {
      this.seed = seed;
    }
    if (stitchTiles != null) {
      this.stitchTiles = stitchTiles;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (turbulenceType != null) {
      this.turbulenceType = turbulenceType;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The base frequency parameter for the noise function.
  String get baseFrequency => this["baseFrequency"];
  void set baseFrequency(String value) => this["baseFrequency"] = value;

  /// The number of octaves for the noise function.
  String get numOctaves => this["numOctaves"];
  void set numOctaves(String value) => this["numOctaves"] = value;

  /// The starting number for the pseudorandom number generator.
  String get seed => this["seed"];
  void set seed(String value) => this["seed"] = value;

  /// How the Perlin Noise tiles behave at the border.
  /// Use `StitchTiles` to set the value.
  String get stitchTiles => this["stitchTiles"];
  void set stitchTiles(String value) => this["stitchTiles"] = value;

  /// Whether the filter primitive should perform a noise or turbulence function.
  /// Use `TurbulenceType` to set the value.
  String get turbulenceType => this["type"];
  void set turbulenceType(String value) => this["type"] = value;
}

/// A wrapper for *SVGFilterElement*.
class Filter extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        FilterAttributes,
        PositionAttributes,
        ReferenceAttributes {
  Filter({
    String? filter,
    String? filterUnits,
    String? height,
    String? href,
    String? id,
    String? input,
    String? lang,
    String? primitiveUnits,
    String? result,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "filter",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (filterUnits != null) {
      this.filterUnits = filterUnits;
    }
    if (height != null) {
      this.height = height;
    }
    if (href != null) {
      this.href = href;
    }
    if (id != null) {
      this.id = id;
    }
    if (input != null) {
      this.input = input;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (primitiveUnits != null) {
      this.primitiveUnits = primitiveUnits;
    }
    if (result != null) {
      this.result = result;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// Defines the coordinate system for the attributes *x*, *y*, *width* and *height*.
  /// Use `FilterUnits` to set the value.
  String get primitiveUnits => this["primitiveUnits"];
  void set primitiveUnits(String value) => this["primitiveUnits"] = value;
}

/// A wrapper for *SVGGElement*.
class G extends BaseWrapper
    with
        BaseAttributes,
        ClipMaskAttributes,
        FillAttributes,
        StrokeAttributes,
        TransformAttributes {
  G({
    String? clipPath,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? id,
    String? lang,
    String? mask,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "g",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
  }
}

/// A wrapper for *SVGImageElement*.
class Image extends BaseWrapper
    with DimensionAttributes, PositionAttributes, ReferenceAttributes {
  Image({
    String? height,
    String? href,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "image",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (height != null) {
      this.height = height;
    }
    if (href != null) {
      this.href = href;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGLineElement*.
class Line extends BaseWrapper
    with
        BaseAttributes,
        ClipMaskAttributes,
        LineAttributes,
        MarkerAttributes,
        StrokeAttributes,
        TransformAttributes {
  Line({
    String? clipPath,
    String? filter,
    String? id,
    String? lang,
    String? markerEnd,
    String? markerMid,
    String? markerStart,
    String? mask,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    String? x1,
    String? x2,
    String? y1,
    String? y2,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "line",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (markerEnd != null) {
      this.markerEnd = markerEnd;
    }
    if (markerMid != null) {
      this.markerMid = markerMid;
    }
    if (markerStart != null) {
      this.markerStart = markerStart;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
    if (x1 != null) {
      this.x1 = x1;
    }
    if (x2 != null) {
      this.x2 = x2;
    }
    if (y1 != null) {
      this.y1 = y1;
    }
    if (y2 != null) {
      this.y2 = y2;
    }
  }
}

/// A wrapper for *SVGLinearGradientElement*.
class LinearGradient extends BaseWrapper with BaseAttributes, LineAttributes {
  LinearGradient({
    String? filter,
    String? id,
    String? lang,
    String? tabIndex,
    String? x1,
    String? x2,
    String? y1,
    String? y2,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "linearGradient",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (x1 != null) {
      this.x1 = x1;
    }
    if (x2 != null) {
      this.x2 = x2;
    }
    if (y1 != null) {
      this.y1 = y1;
    }
    if (y2 != null) {
      this.y2 = y2;
    }
  }
}

/// A wrapper for *SVGMPathElement*.
class MPath extends BaseWrapper with BaseAttributes, ReferenceAttributes {
  MPath({
    String? filter,
    String? href,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "mpath",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (href != null) {
      this.href = href;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGMarkerElement*.
class Marker extends BaseWrapper
    with BaseAttributes, ReferenceCoordinateAttributes {
  Marker({
    String? filter,
    String? id,
    String? lang,
    String? markerHeight,
    String? markerWidth,
    String? orient,
    String? refX,
    String? refY,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "marker",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (markerHeight != null) {
      this.markerHeight = markerHeight;
    }
    if (markerWidth != null) {
      this.markerWidth = markerWidth;
    }
    if (orient != null) {
      this.orient = orient;
    }
    if (refX != null) {
      this.refX = refX;
    }
    if (refY != null) {
      this.refY = refY;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }

  /// Height of the marker.
  String get markerHeight => this["markerHeight"];
  void set markerHeight(String value) => this["markerHeight"] = value;

  /// Width of the marker.
  String get markerWidth => this["markerWidth"];
  void set markerWidth(String value) => this["markerWidth"] = value;

  /// The orientation of the marker; an angle, "auto" or "auto-start-reverse".
  String get orient => this["orient"];
  void set orient(String value) => this["orient"] = value;
}

/// A wrapper for *SVGMaskElement*.
class Mask extends BaseWrapper with BaseAttributes {
  Mask({
    String? filter,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "mask",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGPathElement*.
class Path extends BaseWrapper
    with
        BaseAttributes,
        FillAttributes,
        MarkerAttributes,
        StrokeAttributes,
        TransformAttributes {
  Path({
    String? d,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? id,
    String? lang,
    String? markerEnd,
    String? markerMid,
    String? markerStart,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "path",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (d != null) {
      this.d = d;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (markerEnd != null) {
      this.markerEnd = markerEnd;
    }
    if (markerMid != null) {
      this.markerMid = markerMid;
    }
    if (markerStart != null) {
      this.markerStart = markerStart;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
  }

  /// The path directions.
  /// Use `PathBuilder` to set the value.
  String get d => this["d"];
  void set d(String value) => this["d"] = value;
}

/// A wrapper for *SVGPatternElement*.
class Pattern extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        PositionAttributes,
        ReferenceAttributes,
        TransformAttributes,
        ViewBoxAttributes {
  Pattern({
    String? filter,
    String? height,
    String? href,
    String? id,
    String? lang,
    String? patternContentUnits,
    String? patternTransform,
    String? patternUnits,
    String? preserveAspectRatio,
    String? tabIndex,
    String? transform,
    String? viewBox,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "pattern",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (height != null) {
      this.height = height;
    }
    if (href != null) {
      this.href = href;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (patternContentUnits != null) {
      this.patternContentUnits = patternContentUnits;
    }
    if (patternTransform != null) {
      this.patternTransform = patternTransform;
    }
    if (patternUnits != null) {
      this.patternUnits = patternUnits;
    }
    if (preserveAspectRatio != null) {
      this.preserveAspectRatio = preserveAspectRatio;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
    if (viewBox != null) {
      this.viewBox = viewBox;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// Which coordinate system to use for the contents of the pattern.
  String get patternContentUnits => this["patternContentUnits"];
  void set patternContentUnits(String value) =>
      this["patternContentUnits"] = value;

  /// A list of transform operations applied to the pattern.
  /// Use `TransformBuilder` to set the value.
  String get patternTransform => this["patternTransform"];
  void set patternTransform(String value) => this["patternTransform"] = value;

  /// Which coordinate system to use for the geometry properties.
  String get patternUnits => this["patternUnits"];
  void set patternUnits(String value) => this["patternUnits"] = value;
}

/// A wrapper for *SVGPolygonElement*.
class Polygon extends BaseWrapper
    with
        BaseAttributes,
        ClipMaskAttributes,
        FillAttributes,
        MarkerAttributes,
        PointsAttributes,
        StrokeAttributes,
        TransformAttributes {
  Polygon({
    String? clipPath,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? id,
    String? lang,
    String? markerEnd,
    String? markerMid,
    String? markerStart,
    String? mask,
    String? points,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "polygon",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (markerEnd != null) {
      this.markerEnd = markerEnd;
    }
    if (markerMid != null) {
      this.markerMid = markerMid;
    }
    if (markerStart != null) {
      this.markerStart = markerStart;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (points != null) {
      this.points = points;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
  }
}

/// A wrapper for *SVGPolylineElement*.
class Polyline extends BaseWrapper
    with
        BaseAttributes,
        ClipMaskAttributes,
        FillAttributes,
        MarkerAttributes,
        PointsAttributes,
        StrokeAttributes,
        TransformAttributes {
  Polyline({
    String? clipPath,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? id,
    String? lang,
    String? markerEnd,
    String? markerMid,
    String? markerStart,
    String? mask,
    String? points,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "polyline",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (markerEnd != null) {
      this.markerEnd = markerEnd;
    }
    if (markerMid != null) {
      this.markerMid = markerMid;
    }
    if (markerStart != null) {
      this.markerStart = markerStart;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (points != null) {
      this.points = points;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
  }
}

/// A wrapper for *SVGRadialGradientElement*.
class RadialGradient extends BaseWrapper
    with BaseAttributes, CenterAttributes, RadiusAttributes {
  RadialGradient({
    String? cx,
    String? cy,
    String? filter,
    String? fx,
    String? fy,
    String? id,
    String? lang,
    String? r,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "radialGradient",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (cx != null) {
      this.cx = cx;
    }
    if (cy != null) {
      this.cy = cy;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (fx != null) {
      this.fx = fx;
    }
    if (fy != null) {
      this.fy = fy;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (r != null) {
      this.r = r;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }

  /// The x position of the radial gradient center.
  String get fx => this["fx"];
  void set fx(String value) => this["fx"] = value;

  /// The y position of the radial gradient center.
  String get fy => this["fy"];
  void set fy(String value) => this["fy"] = value;
}

/// A wrapper for *SVGRectElement*.
class Rect extends BaseWrapper
    with
        BaseAttributes,
        ClipMaskAttributes,
        DimensionAttributes,
        FillAttributes,
        PositionAttributes,
        StrokeAttributes,
        TransformAttributes {
  Rect({
    String? clipPath,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? height,
    String? id,
    String? lang,
    String? mask,
    String? rx,
    String? ry,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "rect",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (rx != null) {
      this.rx = rx;
    }
    if (ry != null) {
      this.ry = ry;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The x radius of the corners.
  String get rx => this["rx"];
  void set rx(String value) => this["rx"] = value;

  /// The y radius of the corners.
  String get ry => this["ry"];
  void set ry(String value) => this["ry"] = value;
}

/// A wrapper for *SVGSVGElement*.
class SVG extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        PositionAttributes,
        TransformAttributes,
        ViewBoxAttributes {
  SVG({
    String? filter,
    String? height,
    String? id,
    String? lang,
    String? preserveAspectRatio,
    String? tabIndex,
    String? transform,
    String? viewBox,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "svg",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (preserveAspectRatio != null) {
      this.preserveAspectRatio = preserveAspectRatio;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
    if (viewBox != null) {
      this.viewBox = viewBox;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGScriptElement*.
class Script extends BaseWrapper with BaseAttributes {
  Script({
    String? filter,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "script",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGStopElement*.
class Stop extends BaseWrapper
    with BaseAttributes, DimensionAttributes, PositionAttributes {
  Stop({
    String? filter,
    String? height,
    String? id,
    String? lang,
    String? offset,
    String? stopColor,
    String? tabIndex,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "stop",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (offset != null) {
      this.offset = offset;
    }
    if (stopColor != null) {
      this.stopColor = stopColor;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The position of the gradient stop.
  String get offset => this["offset"];
  void set offset(String value) => this["offset"] = value;

  /// The color of the gradient stop.
  String get stopColor => this["stop-color"];
  void set stopColor(String value) => this["stop-color"] = value;
}

/// A wrapper for *SVGSymbolElement*.
class Symbol extends BaseWrapper
    with
        BaseAttributes,
        DimensionAttributes,
        PositionAttributes,
        ReferenceCoordinateAttributes,
        ViewBoxAttributes {
  Symbol({
    String? filter,
    String? height,
    String? id,
    String? lang,
    String? preserveAspectRatio,
    String? refX,
    String? refY,
    String? tabIndex,
    String? viewBox,
    String? width,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "symbol",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (height != null) {
      this.height = height;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (preserveAspectRatio != null) {
      this.preserveAspectRatio = preserveAspectRatio;
    }
    if (refX != null) {
      this.refX = refX;
    }
    if (refY != null) {
      this.refY = refY;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (viewBox != null) {
      this.viewBox = viewBox;
    }
    if (width != null) {
      this.width = width;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGTextElement*.
class Text extends BaseWrapper
    with
        BaseAttributes,
        ClipMaskAttributes,
        FillAttributes,
        OffsetAttributes,
        PositionAttributes,
        StrokeAttributes,
        TextAttributes,
        TransformAttributes {
  Text({
    String? clipPath,
    String? dx,
    String? dy,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? fontSize,
    String? id,
    String? lang,
    String? lengthAdjust,
    String? mask,
    String? rotate,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? textLength,
    String? transform,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "text",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (dx != null) {
      this.dx = dx;
    }
    if (dy != null) {
      this.dy = dy;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (fontSize != null) {
      this.fontSize = fontSize;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (lengthAdjust != null) {
      this.lengthAdjust = lengthAdjust;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (rotate != null) {
      this.rotate = rotate;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (textLength != null) {
      this.textLength = textLength;
    }
    if (transform != null) {
      this.transform = transform;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}

/// A wrapper for *SVGTextPathElement*.
class TextPath extends BaseWrapper
    with
        BaseAttributes,
        FillAttributes,
        PositionAttributes,
        ReferenceAttributes,
        StrokeAttributes,
        TextAttributes,
        TransformAttributes {
  TextPath({
    String? fill,
    String? fillOpacity,
    String? filter,
    String? fontSize,
    String? href,
    String? id,
    String? lang,
    String? lengthAdjust,
    String? rotate,
    String? startOffset,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? textLength,
    String? transform,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "textPath",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (fontSize != null) {
      this.fontSize = fontSize;
    }
    if (href != null) {
      this.href = href;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (lengthAdjust != null) {
      this.lengthAdjust = lengthAdjust;
    }
    if (rotate != null) {
      this.rotate = rotate;
    }
    if (startOffset != null) {
      this.startOffset = startOffset;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (textLength != null) {
      this.textLength = textLength;
    }
    if (transform != null) {
      this.transform = transform;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }

  /// The offset of the text.
  String get startOffset => this["startOffset"];
  void set startOffset(String value) => this["startOffset"] = value;
}

/// A wrapper for *SVGTitleElement*.
class Title extends BaseWrapper with BaseAttributes {
  Title({
    String? filter,
    String? id,
    String? lang,
    String? tabIndex,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "title",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
  }
}

/// A wrapper for *SVGUseElement*.
class Use extends BaseWrapper
    with
        BaseAttributes,
        ClipMaskAttributes,
        FillAttributes,
        PositionAttributes,
        ReferenceAttributes,
        StrokeAttributes,
        TransformAttributes {
  Use({
    String? clipPath,
    String? fill,
    String? fillOpacity,
    String? filter,
    String? href,
    String? id,
    String? lang,
    String? mask,
    String? stroke,
    String? strokeDasharray,
    String? strokeLinecap,
    String? strokeLinejoin,
    String? strokeOpacity,
    String? strokeWidth,
    String? tabIndex,
    String? transform,
    String? x,
    String? y,
    List<BaseWrapper>? children,
  }) {
    svgElement = web.document.createElementNS(
      help.namespace,
      "use",
    ) as web.SVGElement;
    if (children != null) {
      appendChildren(children);
    }
    if (clipPath != null) {
      this.clipPath = clipPath;
    }
    if (fill != null) {
      this.fill = fill;
    }
    if (fillOpacity != null) {
      this.fillOpacity = fillOpacity;
    }
    if (filter != null) {
      this.filter = filter;
    }
    if (href != null) {
      this.href = href;
    }
    if (id != null) {
      this.id = id;
    }
    if (lang != null) {
      this.lang = lang;
    }
    if (mask != null) {
      this.mask = mask;
    }
    if (stroke != null) {
      this.stroke = stroke;
    }
    if (strokeDasharray != null) {
      this.strokeDasharray = strokeDasharray;
    }
    if (strokeLinecap != null) {
      this.strokeLinecap = strokeLinecap;
    }
    if (strokeLinejoin != null) {
      this.strokeLinejoin = strokeLinejoin;
    }
    if (strokeOpacity != null) {
      this.strokeOpacity = strokeOpacity;
    }
    if (strokeWidth != null) {
      this.strokeWidth = strokeWidth;
    }
    if (tabIndex != null) {
      this.tabIndex = tabIndex;
    }
    if (transform != null) {
      this.transform = transform;
    }
    if (x != null) {
      this.x = x;
    }
    if (y != null) {
      this.y = y;
    }
  }
}
