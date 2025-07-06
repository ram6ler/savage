import "dart:js_interop";
import "package:web/web.dart" as web;
import "../helpers/helpers.dart" as help;

typedef MouseEventFunction = void Function(web.MouseEvent);

abstract class BaseWrapper {
  /// The wrapped SVG element.
  late web.SVGElement svgElement;

  /// The children wrappers.
  final children = <BaseWrapper>[];

  // BaseWrapper(List<BaseWrapper>? children) {
  //   this.children = children ?? [];
  //   for (final child in this.children) {
  //     appendChild(child);
  //   }
  // }

  /// The classes of the element.
  String get classes => help.getAttribute(svgElement, "class");

  /// Add a class to the element.
  void addClass(String c) {
    if (!classes.contains(c)) {
      help.setAttribute(
        svgElement,
        "class",
        "$classes $c".trim(),
      );
    }
  }

  /// Remove a class to the element.
  void removeClass(String c) {
    if (classes.contains(c)) {
      help.setAttribute(
        svgElement,
        "class",
        classes.replaceAll(c, "").trim(),
      );
    }
  }

  /// Clears the element's classes.
  void clearClasses() {
    help.setAttribute(
      svgElement,
      "class",
      "",
    );
  }

  /// The id of the element.
  String get id => this["id"];
  void set id(String value) => this["id"] = value;

  /// The style of the element.
  web.CSSStyleDeclaration get style => svgElement.style;

  String operator [](String attribute) =>
      help.getAttribute(svgElement, attribute);

  void operator []=(String attribute, String value) => help.setAttribute(
        svgElement,
        attribute,
        value,
      );

  /// The text in the element.
  String get textContent => svgElement.textContent ?? "";
  void set textContent(String value) => svgElement.textContent = value;

  /// Appends a child element.
  void appendChild(BaseWrapper child) {
    svgElement.appendChild(child.svgElement);
    children.add(child);
  }

  /// Appends children elements.
  void appendChildren(Iterable<BaseWrapper> children) {
    for (final child in children) {
      appendChild(child);
    }
  }

  /// Remove a child element.
  void removeChild(BaseWrapper child) {
    svgElement.removeChild(child.svgElement);
    children.remove(child);
  }

  /// Clears children elements.
  void clearChildren() {
    while (svgElement.hasChildNodes()) {
      svgElement.removeChild(svgElement.firstElementChild!);
    }
    children.clear();
  }

  /// Sets the onclick function of the wrapped svg element.
  void onClick(MouseEventFunction f) => svgElement.onclick = f.toJS;

  /// Sets the onmousedown function of the wrapped svg element.
  void onMouseDown(MouseEventFunction f) => svgElement.onmousedown = f.toJS;

  /// Sets the onmouseenter function of the wrapped svg element.
  void onMouseEnter(MouseEventFunction f) => svgElement.onmouseenter = f.toJS;

  /// Sets the onmouseleave function of the wrapped svg element.
  void onMouseLeave(MouseEventFunction f) => svgElement.onmouseleave = f.toJS;

  /// Sets the onmousemove function of the wrapped svg element.
  void onMouseMove(MouseEventFunction f) => svgElement.onmousemove = f.toJS;

  /// Sets the onmouseout function of the wrapped svg element.
  void onMouseOut(MouseEventFunction f) => svgElement.onmouseout = f.toJS;

  /// Sets the onmouseover function of the wrapped svg element.
  void onMouseOver(MouseEventFunction f) => svgElement.onmouseover = f.toJS;

  /// Sets the onmouseup function of the wrapped svg element.
  void omMouseUp(MouseEventFunction f) => svgElement.onmouseup = f.toJS;
}
