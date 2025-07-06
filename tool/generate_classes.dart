import "dart:io";
import "dart:convert" show json;
import "package:yaml/yaml.dart" as yaml;

typedef DataMap = Map<String, dynamic>;

void main() {
  final mixinAttributes = <String, List<(String, String)>>{};
  const comment = "// Generated code: do not edit directly.\n"
          "// See tool/README.md for more information.\n\n",
      webMixinPath = "lib/src/savage_web/elements/mixins.dart",
      webWrapperPath = "lib/src/savage_web/elements/wrappers.dart",
      webBuilderPath = "lib/src/savage_web/builder/builder.dart",
      setterPath = "lib/src/helpers/setters.dart",
      ioMixinPath = "lib/src/savage_io/elements/mixins.dart",
      ioElementsPath = "lib/src/savage_io/elements/elements.dart",
      ioSVGToWrapperPath = "lib/src/savage_io/builder/representation_map.dart";

  // Mixins
  {
    final DataMap mixinData = json.decode(
      json.encode(
        yaml.loadYaml(
          File("tool/classes/mixins.yaml").readAsStringSync(),
        ),
      ),
    );

    final sortedKeys = mixinData.keys.toList()..sort();

    final webMixinContent = StringBuffer(comment)
      ..writeln('import "package:web/web.dart" as web;');

    final ioMixinContent = StringBuffer(comment);

    for (final mixinName in sortedKeys) {
      final data = mixinData[mixinName]! as DataMap;
      final attributes = data["attributes"]! as DataMap;

      webMixinContent
        ..writeln("\nmixin $mixinName {")
        ..writeln(" web.SVGElement get svgElement;")
        ..writeln(" String operator[](String attribute);")
        ..writeln(" void operator[]=(String attribute, String value);");

      ioMixinContent
        ..writeln("\nmixin $mixinName {")
        ..writeln(" String operator[](String attribute);")
        ..writeln(" void operator[]=(String attribute, String value);");

      final sortedAttributes = attributes.keys.toList()..sort();

      mixinAttributes[mixinName] = [];

      for (final attributeName in sortedAttributes) {
        final attributeData = attributes[attributeName]! as DataMap;

        final representation = attributeData.containsKey("representation")
            ? attributeData["representation"] as String
            : attributeName.toLowerCase();

        mixinAttributes[mixinName]!.add((attributeName, representation));

        final docs = attributeData["docs"] as String;

        webMixinContent
          ..writeln("/// $docs")
          ..write("String get $attributeName => ")
          ..writeln('this["$representation"];')
          ..write("void set $attributeName(String value) => ")
          ..writeln('this["$representation"] = value;');

        ioMixinContent
          ..writeln("/// $docs")
          ..write("String get $attributeName => ")
          ..writeln('this["$representation"];')
          ..write("void set $attributeName(String value) => ")
          ..writeln('this["$representation"] = value;');
      }

      webMixinContent.writeln("}");
      ioMixinContent.writeln("}");
    }
    print("Writing $webMixinPath...");
    File(webMixinPath).writeAsStringSync(webMixinContent.toString());
    print("Writing $ioMixinPath...");
    File(ioMixinPath).writeAsStringSync(ioMixinContent.toString());
  }

  // Wrappers
  {
    final DataMap wrapperData = json.decode(
      json.encode(
        yaml.loadYaml(
          File("tool/classes/wrappers.yaml").readAsStringSync(),
        ),
      ),
    );

    final sortedKeys = wrapperData.keys.toList()..sort();

    final webWrapperContent = StringBuffer(comment)
      ..writeln('import "package:web/web.dart" as web;')
      ..writeln('import "../helpers/helpers.dart" as help;')
      ..writeln('import "mixins.dart";')
      ..writeln('import "base_wrapper.dart";');

    final setterContent = StringBuffer(comment);

    final ioElementsContent = StringBuffer(comment)
      ..writeln('import "base_element.dart";')
      ..writeln('import "mixins.dart";');

    final ioSVGToWrapperContent = StringBuffer(comment)
      ..writeln('import "../elements/base_element.dart";')
      ..writeln('import "../elements/elements.dart";')
      ..writeln("\n/// Maps SVG elements to constructors.")
      ..writeln("/// Used to parse SVG code.")
      ..writeln("final representationMap = <String, BaseElement Function()>{");

    for (final wrapperName in sortedKeys) {
      final data = wrapperData[wrapperName] as DataMap;
      final mixins = data["mixins"] == null
          ? <String>[]
          : (data["mixins"] as String).split(" ")
        ..sort();

      final svgName = data["svgName"] == null
          ? wrapperName.toLowerCase()
          : data["svgName"] as String;

      ioSVGToWrapperContent.writeln('"$svgName": () => $wrapperName(),');

      final allAttributes = <String>[];

      for (final mixin in mixins) {
        allAttributes.addAll(
            [for (final (attribute, _) in mixinAttributes[mixin]!) attribute]);
      }

      final attributes = data["attributes"] == null
          ? DataMap()
          : data["attributes"] as DataMap;

      allAttributes
        ..addAll(attributes.keys)
        ..sort();

      setterContent.writeln("\nabstract class ${wrapperName}Attributes {");

      webWrapperContent
        ..writeln("\n/// A wrapper for *SVG${wrapperName}Element*.")
        ..writeln("class $wrapperName extends BaseWrapper ");

      ioElementsContent
        ..write("\n/// A representation class for ")
        ..writeln("the SVG element *$wrapperName*.")
        ..writeln("class $wrapperName extends BaseElement ");

      if (mixins.isNotEmpty) {
        webWrapperContent.writeln("with ${mixins.join(", ")}");
        ioElementsContent.writeln("with ${mixins.join(", ")}");

        for (final mixin in mixins) {
          for (final (attribute, representation) in mixinAttributes[mixin]!) {
            setterContent
                .writeln('static const $attribute = "$representation";');
          }
        }
      }

      webWrapperContent
        ..writeln("{")
        ..writeln("  $wrapperName({");

      ioElementsContent
        ..writeln("{")
        ..writeln("  $wrapperName({");

      for (final attribute in allAttributes) {
        webWrapperContent.writeln("String? $attribute,");
        ioElementsContent.writeln("String? $attribute,");
      }

      webWrapperContent
        ..writeln("List<BaseWrapper>? children,")
        ..writeln("}) {")
        ..writeln("svgElement = web.document.createElementNS(")
        ..writeln(' help.namespace, "$svgName",')
        ..writeln(") as web.SVGElement;")
        ..writeln("if (children != null) {")
        ..writeln("  appendChildren(children);")
        ..writeln("}");

      ioElementsContent
        ..writeln("List<BaseElement>? children,")
        ..writeln('}) : super("$svgName") {')
        ..writeln("if (children != null) {")
        ..writeln("  appendChildren(children);")
        ..writeln("}");

      for (final attribute in allAttributes) {
        webWrapperContent
          ..writeln("if ($attribute != null) {")
          ..writeln("this.$attribute = $attribute;")
          ..writeln("}");

        ioElementsContent
          ..writeln("if ($attribute != null) {")
          ..writeln("this.$attribute = $attribute;")
          ..writeln("}");
      }

      webWrapperContent.writeln("}");
      ioElementsContent.writeln("}");

      final sortedAttributes = attributes.keys.toList()..sort();

      for (final attribute in sortedAttributes) {
        final attributeData = attributes[attribute] as DataMap,
            docs = attributeData["docs"] as String,
            representation = attributeData["representation"] == null
                ? attribute.toLowerCase()
                : attributeData["representation"] as String,
            completer = attributeData["completer"] == null
                ? ""
                : "\n/// Use `${attributeData["completer"]}` to set the value.";

        webWrapperContent
          ..writeln("/// $docs$completer")
          ..write("String get $attribute => ")
          ..write('this["$representation"];')
          ..write("void set $attribute(String value) => ")
          ..writeln('this["$representation"] = value;');

        ioElementsContent
          ..writeln("/// $docs$completer")
          ..write("String get $attribute => ")
          ..write('this["$representation"];')
          ..write("void set $attribute(String value) => ")
          ..writeln('this["$representation"] = value;');
      }

      webWrapperContent.writeln("}");
      ioElementsContent.writeln("}");
      setterContent.writeln("}");
    }
    ioSVGToWrapperContent.writeln("};");

    File(webWrapperPath).writeAsStringSync(webWrapperContent.toString());
    File(ioElementsPath).writeAsStringSync(ioElementsContent.toString());
    File(setterPath).writeAsStringSync(setterContent.toString());
    File(ioSVGToWrapperPath)
        .writeAsStringSync(ioSVGToWrapperContent.toString());
  }

  // Builder
  {
    final DataMap wrapperData = json.decode(
      json.encode(
        yaml.loadYaml(
          File("tool/classes/wrappers.yaml").readAsStringSync(),
        ),
      ),
    );

    final sortedKeys = wrapperData.keys.toList()..sort();

    final fileContent = StringBuffer(comment)
      ..writeln('import "package:web/web.dart" as web;')
      ..writeln('import "../elements/base_wrapper.dart" show BaseWrapper;')
      ..writeln('import "../elements/wrappers.dart";')
      ..writeln(r'final getType = RegExp(r".*\[object (\w+)\].*");');

    fileContent
      ..writeln("String? domType(web.SVGElement element) {")
      ..writeln("final m = getType.firstMatch(element.toString());")
      ..writeln("if (m == null) {")
      ..writeln("return null;")
      ..writeln("}")
      ..writeln("return m.group(1)!;")
      ..writeln("}\n")
      ..writeln("/// Builds a wrapper from an existing SVG element.")
      ..writeln("BaseWrapper buildFromSVGElement(web.SVGElement element) {")
      ..writeln("final type = domType(element);")
      ..writeln("if (type == null) {")
      ..writeln(r'  throw Exception("Type? $element...");')
      ..writeln("}\n")
      ..writeln("return switch (type) {");

    for (final wrapperName in sortedKeys) {
      final domName = "SVG${wrapperName}Element";
      fileContent
        ..writeln('"$domName" => build<$wrapperName>(')
        ..writeln("element, () => $wrapperName(),),");
    }

    fileContent
      ..writeln(r' _ => throw Exception("Not handled: $type; $element...")')
      ..writeln("};\n}");

    fileContent
      ..writeln("/// Builds a wrapper from an existing SVG element's id.")
      ..writeln("BaseWrapper buildFromID(String id) =>")
      ..writeln(r'buildFromSVGElement(web.document.querySelector("#$id")')
      ..writeln("as web.SVGElement);\n");

    fileContent
      ..writeln("T build<T extends BaseWrapper>(")
      ..writeln("web.SVGElement element, T Function() create) {")
      ..writeln("final result = create()..svgElement = element,")
      ..writeln("children = [")
      ..writeln("for (var i = 0; i < element.children.length; i++)")
      ..writeln("element.children.item(i)!];")
      ..writeln("for (final child in children) {")
      ..writeln("final type = domType(element);")
      ..writeln('if (type != null && type.contains("SVG")) {')
      ..writeln(
          "result.appendChild(buildFromSVGElement(child as web.SVGElement));")
      ..writeln("}}")
      ..writeln("return result;}");

    File(webBuilderPath).writeAsStringSync(fileContent.toString());
  }
  // Format generated files
  Process.runSync(
    "dart",
    [
      "format",
      webMixinPath,
      webBuilderPath,
      webWrapperPath,
      ioMixinPath,
      ioElementsPath,
      setterPath,
      ioSVGToWrapperPath,
    ],
  );
}
