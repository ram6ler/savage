// Generated code: do not edit directly.
// See tool/README.md for more information.

import "package:web/web.dart" as web;
import "../elements/base_wrapper.dart" show BaseWrapper;
import "../elements/wrappers.dart";

final getType = RegExp(r".*\[object (\w+)\].*");
String? domType(web.SVGElement element) {
  final m = getType.firstMatch(element.toString());
  if (m == null) {
    return null;
  }
  return m.group(1)!;
}

/// Builds a wrapper from an existing SVG element.
BaseWrapper buildFromSVGElement(web.SVGElement element) {
  final type = domType(element);
  if (type == null) {
    throw Exception("Type? $element...");
  }

  return switch (type) {
    "SVGAElement" => build<A>(
        element,
        () => A(),
      ),
    "SVGAnimateElement" => build<Animate>(
        element,
        () => Animate(),
      ),
    "SVGAnimateMotionElement" => build<AnimateMotion>(
        element,
        () => AnimateMotion(),
      ),
    "SVGAnimateTransformElement" => build<AnimateTransform>(
        element,
        () => AnimateTransform(),
      ),
    "SVGCircleElement" => build<Circle>(
        element,
        () => Circle(),
      ),
    "SVGClipPathElement" => build<ClipPath>(
        element,
        () => ClipPath(),
      ),
    "SVGDefsElement" => build<Defs>(
        element,
        () => Defs(),
      ),
    "SVGDescElement" => build<Desc>(
        element,
        () => Desc(),
      ),
    "SVGEllipseElement" => build<Ellipse>(
        element,
        () => Ellipse(),
      ),
    "SVGFEBlendElement" => build<FEBlend>(
        element,
        () => FEBlend(),
      ),
    "SVGFEColorMatrixElement" => build<FEColorMatrix>(
        element,
        () => FEColorMatrix(),
      ),
    "SVGFEComponentTransferElement" => build<FEComponentTransfer>(
        element,
        () => FEComponentTransfer(),
      ),
    "SVGFECompositeElement" => build<FEComposite>(
        element,
        () => FEComposite(),
      ),
    "SVGFEConvolveMatrixElement" => build<FEConvolveMatrix>(
        element,
        () => FEConvolveMatrix(),
      ),
    "SVGFEDiffuseLightingElement" => build<FEDiffuseLighting>(
        element,
        () => FEDiffuseLighting(),
      ),
    "SVGFEDisplacementMapElement" => build<FEDisplacementMap>(
        element,
        () => FEDisplacementMap(),
      ),
    "SVGFEDistantLightElement" => build<FEDistantLight>(
        element,
        () => FEDistantLight(),
      ),
    "SVGFEDropShadowElement" => build<FEDropShadow>(
        element,
        () => FEDropShadow(),
      ),
    "SVGFEFloodElement" => build<FEFlood>(
        element,
        () => FEFlood(),
      ),
    "SVGFEFuncAElement" => build<FEFuncA>(
        element,
        () => FEFuncA(),
      ),
    "SVGFEFuncBElement" => build<FEFuncB>(
        element,
        () => FEFuncB(),
      ),
    "SVGFEFuncGElement" => build<FEFuncG>(
        element,
        () => FEFuncG(),
      ),
    "SVGFEFuncRElement" => build<FEFuncR>(
        element,
        () => FEFuncR(),
      ),
    "SVGFEGaussianBlurElement" => build<FEGaussianBlur>(
        element,
        () => FEGaussianBlur(),
      ),
    "SVGFEImageElement" => build<FEImage>(
        element,
        () => FEImage(),
      ),
    "SVGFEMergeElement" => build<FEMerge>(
        element,
        () => FEMerge(),
      ),
    "SVGFEMergeNodeElement" => build<FEMergeNode>(
        element,
        () => FEMergeNode(),
      ),
    "SVGFEMorphologyElement" => build<FEMorphology>(
        element,
        () => FEMorphology(),
      ),
    "SVGFEOffsetElement" => build<FEOffset>(
        element,
        () => FEOffset(),
      ),
    "SVGFEPointLightElement" => build<FEPointLight>(
        element,
        () => FEPointLight(),
      ),
    "SVGFESpecularLightingElement" => build<FESpecularLighting>(
        element,
        () => FESpecularLighting(),
      ),
    "SVGFESpotLightElement" => build<FESpotLight>(
        element,
        () => FESpotLight(),
      ),
    "SVGFETileElement" => build<FETile>(
        element,
        () => FETile(),
      ),
    "SVGFETurbulenceElement" => build<FETurbulence>(
        element,
        () => FETurbulence(),
      ),
    "SVGFilterElement" => build<Filter>(
        element,
        () => Filter(),
      ),
    "SVGGElement" => build<G>(
        element,
        () => G(),
      ),
    "SVGImageElement" => build<Image>(
        element,
        () => Image(),
      ),
    "SVGLineElement" => build<Line>(
        element,
        () => Line(),
      ),
    "SVGLinearGradientElement" => build<LinearGradient>(
        element,
        () => LinearGradient(),
      ),
    "SVGMPathElement" => build<MPath>(
        element,
        () => MPath(),
      ),
    "SVGMarkerElement" => build<Marker>(
        element,
        () => Marker(),
      ),
    "SVGMaskElement" => build<Mask>(
        element,
        () => Mask(),
      ),
    "SVGPathElement" => build<Path>(
        element,
        () => Path(),
      ),
    "SVGPatternElement" => build<Pattern>(
        element,
        () => Pattern(),
      ),
    "SVGPolygonElement" => build<Polygon>(
        element,
        () => Polygon(),
      ),
    "SVGPolylineElement" => build<Polyline>(
        element,
        () => Polyline(),
      ),
    "SVGRadialGradientElement" => build<RadialGradient>(
        element,
        () => RadialGradient(),
      ),
    "SVGRectElement" => build<Rect>(
        element,
        () => Rect(),
      ),
    "SVGSVGElement" => build<SVG>(
        element,
        () => SVG(),
      ),
    "SVGScriptElement" => build<Script>(
        element,
        () => Script(),
      ),
    "SVGStopElement" => build<Stop>(
        element,
        () => Stop(),
      ),
    "SVGSymbolElement" => build<Symbol>(
        element,
        () => Symbol(),
      ),
    "SVGTextElement" => build<Text>(
        element,
        () => Text(),
      ),
    "SVGTextPathElement" => build<TextPath>(
        element,
        () => TextPath(),
      ),
    "SVGTitleElement" => build<Title>(
        element,
        () => Title(),
      ),
    "SVGUseElement" => build<Use>(
        element,
        () => Use(),
      ),
    _ => throw Exception("Not handled: $type; $element...")
  };
}

/// Builds a wrapper from an existing SVG element's id.
BaseWrapper buildFromID(String id) =>
    buildFromSVGElement(web.document.querySelector("#$id") as web.SVGElement);

T build<T extends BaseWrapper>(web.SVGElement element, T Function() create) {
  final result = create()..svgElement = element,
      children = [
        for (var i = 0; i < element.children.length; i++)
          element.children.item(i)!
      ];
  for (final child in children) {
    final type = domType(element);
    if (type != null && type.contains("SVG")) {
      result.appendChild(buildFromSVGElement(child as web.SVGElement));
    }
  }
  return result;
}
