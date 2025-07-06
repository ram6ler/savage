import "representation_map.dart";
import "../elements/base_element.dart";

const debug = false;

final noChildrenRE = RegExp(
      r"^<(\w+) *([^/>]*?)/>",
      dotAll: true,
    ),
    childrenRE = RegExp(
      r"^<(\w+) *([^>]*)>(.*?)</\1>",
      dotAll: true,
    ),
    attributeRE = RegExp(r'^ *([\w-]+) *= *"([^"]+)" *');

BaseElement parseSVG(String svgCode, [int depth = 0]) {
  if (depth == 0) {
    svgCode = [
      for (final line in svgCode.split("\n"))
        if (line.trim().isNotEmpty) line.trim()
    ].join("\n");
  }
  svgCode = svgCode.trim();
  final indent = "  " * depth;
  final match = noChildrenRE.firstMatch(svgCode);
  if (match != null) {
    if (debug) print("${indent}Match 1");
    final elementSVG = match.group(1)!;
    if (debug) print("$indent  Found $elementSVG...");
    if (representationMap.containsKey(elementSVG)) {
      final element = representationMap[elementSVG]!();
      final attributes = getAttributes(match.group(2)!);
      for (final MapEntry(:key, :value) in attributes.entries) {
        if (debug) print("$indent  $key -> $value");
        element[key] = value;
      }
      return element;
    } else {
      throw Exception("Not handled: $elementSVG...");
    }
  } else {
    final match = childrenRE.firstMatch(svgCode);
    if (match != null) {
      if (debug) print("${indent}Match 2");
      final elementSVG = match.group(1)!;
      if (debug) print("$indent  Found $elementSVG...");
      if (representationMap.containsKey(elementSVG)) {
        final element = representationMap[elementSVG]!();
        final attributes = getAttributes(match.group(2)!);
        for (final MapEntry(:key, :value) in attributes.entries) {
          if (debug) print("$indent  $key -> $value");
          element[key] = value;
        }
        var body = match.group(3)!.trim();
        while (body.isNotEmpty) {
          final match = noChildrenRE.firstMatch(body);
          if (match != null) {
            if (debug) print("$indent  Child Match 1...");
            element.appendChild(parseSVG(match.group(0)!, depth + 1));
            body = body.substring(match.end).trim();
          } else {
            final match = childrenRE.firstMatch(body);
            if (match != null) {
              if (debug) print("$indent  Child Match 2...");
              element.appendChild(parseSVG(match.group(0)!));
              body = body.substring(match.end).trim();
            } else {
              throw Exception("Parse error:\n```\n$body\n```");
            }
          }
        }
        return element;
      } else {
        throw Exception("Not handled: $elementSVG...");
      }
    } else {
      throw Exception("Parse error:\n```\n$svgCode\n```");
    }
  }
}

Map<String, String> getAttributes(String settings) {
  if (debug) print("Getting attributes from:\n```\n$settings\n```");
  final result = <String, String>{};

  var expressions = settings
      .replaceAll("\n", " ")
      .replaceAll(RegExp(" *= *"), "=")
      .replaceAll("'", '"')
      .replaceAll(RegExp(" +"), " ")
      .trim();

  if (debug) print("Expressions Found: $expressions");
  while (expressions.isNotEmpty) {
    final match = attributeRE.firstMatch(expressions)!,
        attribute = match.group(1)!,
        value = match.group(2)!;
    result[attribute] = value;
    expressions = expressions.substring(match.end).trim();
  }

  return result;
}
