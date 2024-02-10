// Dart imports:
import 'dart:io';

// Package imports:
import 'package:xml/xml.dart';

// Project imports:
import 'package:katana_cli/config.dart';
import 'package:katana_cli/katana_cli.dart';

/// Add a module to use Text-to-Speech.
///
/// Text-to-Speechを利用するためのモジュールを追加します。
class AppTextToSpeechCliAction extends CliCommand with CliActionMixin {
  /// Add a module to use Text-to-Speech.
  ///
  /// Text-to-Speechを利用するためのモジュールを追加します。
  const AppTextToSpeechCliAction();

  @override
  String get description =>
      "Add a module to use Text-to-Speech. Text-to-Speechを利用するためのモジュールを追加します。";

  @override
  bool checkEnabled(ExecContext context) {
    final value = context.yaml.getAsMap("app").getAsMap("text_to_speech");
    final enabled = value.get("enable", false);
    if (!enabled) {
      return false;
    }
    return true;
  }

  @override
  Future<void> exec(ExecContext context) async {
    final bin = context.yaml.getAsMap("bin");
    final flutter = bin.get("flutter", "flutter");
    await command(
      "Import packages.",
      [
        flutter,
        "pub",
        "add",
        "masamune_text_to_speech",
      ],
    );
    label("Edit config.properties");
    final configPropertiesFile = File("android/config.properties");
    if (!configPropertiesFile.existsSync()) {
      await configPropertiesFile.writeAsString("");
    }
    final configProperties = await configPropertiesFile.readAsLines();
    if (!configProperties
        .any((element) => element.startsWith("flutter.minSdkVersion"))) {
      await configPropertiesFile.writeAsString([
        ...configProperties,
        "flutter.minSdkVersion=${Config.firebaseMinSdkVersion}",
      ].join("\n"));
    }
    label("Edit build.gradle");
    final gradle = AppGradle();
    await gradle.load();
    if (!gradle.loadProperties.any((e) => e.name == "configProperties")) {
      gradle.loadProperties.add(
        GradleLoadProperties(
          path: "config.properties",
          name: "configProperties",
          file: "configPropertiesFile",
        ),
      );
    }
    gradle.android?.defaultConfig.minSdkVersion =
        "configProperties[\"flutter.minSdkVersion\"]";
    await gradle.save();
    label("Edit AndroidManifest.xml.");
    final file = File("android/app/src/main/AndroidManifest.xml");
    if (!file.existsSync()) {
      throw Exception(
        "AndroidManifest does not exist in `android/app/src/main/AndroidManifest.xml`. Do `katana create` to complete the initial setup of the project.",
      );
    }
    final document = XmlDocument.parse(await file.readAsString());
    final manifest = document.findAllElements("manifest");
    if (manifest.isEmpty) {
      throw Exception(
        "The structure of AndroidManifest.xml is broken. Do `katana create` to complete the initial setup of the project.",
      );
    }
    final queries = manifest.first.children.firstWhereOrNull(
            (p0) => p0 is XmlElement && p0.name.toString() == "queries") ??
        () {
          final q = XmlElement(XmlName("queries"), [], []);
          manifest.first.children.insertFirst(q);
          return q;
        }();
    if (!queries.children.any((p0) =>
        p0 is XmlElement &&
        p0.name.toString() == "intent" &&
        p0.children.any((p1) =>
            p1 is XmlElement &&
            p1.name.toString() == "action" &&
            p1.attributes.any((p2) =>
                p2.name.toString() == "android:name" &&
                p2.value == "android.intent.action.TTS_SERVICE")))) {
      queries.children.add(
        XmlElement(
          XmlName("intent"),
          [],
          [
            XmlElement(
              XmlName("action"),
              [
                XmlAttribute(
                  XmlName("android:name"),
                  "android.intent.action.TTS_SERVICE",
                ),
              ],
              [],
            ),
          ],
        ),
      );
    }
    await file.writeAsString(
      document.toXmlString(pretty: true, indent: "    ", newLine: "\n"),
    );
    label("Edit Info.plist.");
    final plist = File("ios/Runner/Info.plist");
    final plistDocument = XmlDocument.parse(await plist.readAsString());
    final dict = plistDocument.findAllElements("dict").firstOrNull;
    if (dict == null) {
      throw Exception(
        "Could not find `dict` element in `ios/Runner/Info.plist`. File is corrupt.",
      );
    }
    final node = dict.children.firstWhereOrNull((p0) {
      return p0 is XmlElement &&
          p0.name.toString() == "key" &&
          p0.innerText == "UIBackgroundModes";
    });
    if (node == null) {
      dict.children.addAll(
        [
          XmlElement(
            XmlName("key"),
            [],
            [XmlText("UIBackgroundModes")],
          ),
          XmlElement(
            XmlName("array"),
            [],
            [
              XmlElement(
                XmlName("string"),
                [],
                [XmlText("audio")],
              )
            ],
          ),
        ],
      );
    } else {
      final next = node.nextElementSibling;
      if (next is XmlElement && next.name.toString() == "array") {
        if (!next.children.any(
          (p1) =>
              p1 is XmlElement &&
              p1.name.toString() == "string" &&
              p1.innerText == "audio",
        )) {
          next.children.add(
            XmlElement(
              XmlName("string"),
              [],
              [XmlText("audio")],
            ),
          );
        }
      } else {
        throw Exception(
          "The `ios/Runner/Info.plist` configuration is broken.",
        );
      }
    }
    await plist.writeAsString(
      plistDocument.toXmlString(pretty: true, indent: "\t", newLine: "\n"),
    );
  }
}
