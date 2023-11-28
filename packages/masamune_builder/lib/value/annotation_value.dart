part of '/masamune_builder.dart';

/// Class for storing annotation values.
///
/// Specify the class element in [element] and the annotation type in [annotationType].
///
/// アノテーションの値を保存するためのクラス。
///
/// [element]にクラスエレメント、[annotationType]にアノテーションのタイプを指定します。
class ModelAnnotationValue {
  /// Class for storing annotation values.
  ///
  /// Specify the class element in [element] and the annotation type in [annotationType].
  ///
  /// アノテーションの値を保存するためのクラス。
  ///
  /// [element]にクラスエレメント、[annotationType]にアノテーションのタイプを指定します。
  ModelAnnotationValue(this.element, this.annotationType) {
    final matcher = TypeChecker.fromRuntime(annotationType);

    for (final meta in element.metadata) {
      final obj = meta.computeConstantValue()!;
      if (matcher.isExactlyType(obj.type!)) {
        final source = meta.toSource();
        mirror = obj.getField("mirror")?.toStringValue();
        endpoint = obj.getField("endpoint")?.toStringValue();

        final adapterMatch = _adapterRegExp.firstMatch(source);
        if (adapterMatch != null) {
          final mirrorMatch = _mirrorWithSingleQuoteRegExp.firstMatch(source) ??
              _mirrorWithDoubleQuoteRegExp.firstMatch(source) ??
              _mirrorWithVariableRegExp.firstMatch(source);
          final match = adapterMatch
              .group(1)
              ?.replaceAll(mirrorMatch?.group(0) ?? "", "")
              .trim()
              .trimString(",")
              .trim();
          if (match.isNotEmpty) {
            adapter = match!.trimString("'").trimString('"');
          } else {
            adapter = null;
          }
        } else {
          adapter = null;
        }
        return;
      }
    }
    mirror = null;
    adapter = null;
    endpoint = null;
  }

  static final _mirrorWithSingleQuoteRegExp = RegExp(r"mirror\s*:\s*('[^']+')");
  static final _mirrorWithDoubleQuoteRegExp = RegExp(r'mirror\s*:\s*("[^"]+")');
  static final _mirrorWithVariableRegExp =
      RegExp(r'mirror\s*:\s*([a-zA-Z0-9$._-]+)');
  static final _adapterRegExp = RegExp(r"adapter\s*:\s*(.+),?\s*\)\s*$");

  /// Class Element.
  ///
  /// クラスエレメント。
  final ClassElement element;

  /// Annotation Type
  ///
  /// アノテーションのタイプ
  final Type annotationType;

  /// Mirror Path.
  ///
  /// ミラーパス。
  late final String? mirror;

  /// Adapter configuration.
  ///
  /// アダプターの設定。
  late final String? adapter;

  /// Endpoint configuration.
  ///
  /// エンドポイントの設定。
  late final String? endpoint;

  @override
  String toString() {
    return "$runtimeType()";
  }
}
