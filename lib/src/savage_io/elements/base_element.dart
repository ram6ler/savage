import "dart:io";
import "../helpers/helpers.dart" as help;

class BaseElement {
  /// The children of the element.
  final children = <BaseElement>[];

  /// The element's tag name.
  final String elementName;
  final attributes = <String, String>{};

  /// The text in the element.
  var textContent = "";

  BaseElement(this.elementName);

  String _getAttribute(String attribute) {
    if (attributes.containsKey(attribute)) {
      return attributes[attribute]!;
    }
    return "";
  }

  void _setAttribute(String attribute, String value) =>
      attributes[attribute] = value;

  String operator [](String attribute) => _getAttribute(attribute);

  void operator []=(String attribute, String value) =>
      _setAttribute(attribute, value);

  /// The classes of the element.
  void get classes => this["classes"];

  /// Adds class c to the classes.
  void addClass(String c) {
    if (this["classes"].isEmpty) {
      this["classes"] =
          ({for (final c in this["classes"].split(" ")) c}..add(c)).join(" ");
    }
  }

  /// Removes class c from the classes.
  void removeClass(String c) {
    if (this["classes"].isEmpty) {
      return;
    }
    this["classes"] = ({
      for (final x in this["classes"].split(" "))
        if (x != c) x
    }).join(" ");
  }

  /// Removes all classes.
  void clearClasses() {
    attributes.remove("classes");
  }

  /// The id of the element.
  String get id => this["id"];
  void set id(String value) => this["id"] = value;

  /// Adds a child to the children of the element.
  void appendChild(BaseElement e) {
    children.add(e);
  }

  /// Adds children to the children of the element.
  void appendChildren(Iterable<BaseElement> children) {
    this.children.addAll(children);
  }

  /// Removes a child to the children of the element.
  void removeChild(BaseElement e) {
    children.remove(e);
  }

  /// Removes all children.
  void clearChildren() {
    children.clear();
  }

  /// Writes the SVG to file at *path*.
  void writeToFile(String path) {
    File(path).writeAsStringSync("$this");
  }

  String structure([int depth = 0]) {
    final indent = "  " * depth;
    final result = StringBuffer()..writeln("\n${indent}${this.runtimeType} (");
    for (final MapEntry(key: attribute, :value) in attributes.entries) {
      result.writeln('$indent  $attribute: "$value",');
    }
    if (children.isNotEmpty) {
      result.writeln("\n$indent children: [");
      for (final child in children) {
        result.write(child.structure(depth + 1));
      }
      result.writeln("$indent],");
    }
    result.writeln("${indent}),");
    return result.toString();
  }

  String _toString(int depth) {
    final indent = "  " * depth;
    final result = StringBuffer("$indent<$elementName");
    final attributes = {
      for (final MapEntry(:key, :value) in this.attributes.entries) key: value,
      if (elementName == "svg") "xmlns": help.namespace,
    };
    if (attributes.isNotEmpty) {
      result
        ..write(" ")
        ..write([
          for (final MapEntry(:key, :value) in attributes.entries)
            '$key="$value"'
        ].join(" "));
    }

    if (textContent.isEmpty && children.isEmpty) {
      result.writeln(" />");
    } else {
      result
        ..write(">")
        ..writeln(textContent.isEmpty ? "" : "\n$indent  $textContent");

      for (final child in children) {
        result.write(child._toString(depth + 1));
      }
      result.writeln("$indent</$elementName>");
    }
    return result.toString();
  }

  @override
  String toString() {
    return _toString(0);
  }
}
