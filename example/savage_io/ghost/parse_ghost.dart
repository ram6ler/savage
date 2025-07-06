import "dart:io";
import "package:savage/savage_io.dart";

main() async {
  const path = "images/ghost.svg";
  final file = File(path);
  if (await file.exists()) {
    final ghost = parseSVG(await file.readAsString());
    print(ghost);
  }
}
