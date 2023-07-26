part of masamune_introduction;

/// Initialize [MasamuneAdapter] to handle the introduction tutorial.
///
/// 導入のチュートリアルを取り扱うための初期設定を行う[MasamuneAdapter]。
class IntroductionMasamuneAdapter extends MasamuneAdapter {
  /// Initialize [MasamuneAdapter] to handle the introduction tutorial.
  ///
  /// 導入のチュートリアルを取り扱うための初期設定を行う[MasamuneAdapter]。
  const IntroductionMasamuneAdapter({
    required this.items,
    this.enableSkip = true,
    required this.doneLabel,
    required this.skipLabel,
  });

  /// List of tutorial pages.
  ///
  /// チュートリアルのページ一覧。
  final List<IntroductionItem> items;

  /// Set to `true` if skippable.
  ///
  /// スキップ可能な場合`true`にする。
  final bool enableSkip;

  /// Done button label.
  ///
  /// 完了ボタンのラベル。
  final String doneLabel;

  /// Skip button label.
  ///
  /// スキップボタンのラベル。
  final String skipLabel;

  /// You can retrieve the [IntroductionMasamuneAdapter] first given by [MasamuneAdapterScope].
  ///
  /// 最初に[MasamuneAdapterScope]で与えた[IntroductionMasamuneAdapter]を取得することができます。
  static IntroductionMasamuneAdapter get primary {
    assert(
      _primary != null,
      "IntroductionMasamuneAdapter is not set. Place [MasamuneAdapterScope] widget closer to the root.",
    );
    return _primary!;
  }

  static IntroductionMasamuneAdapter? _primary;

  @override
  void onInitScope(MasamuneAdapter adapter) {
    super.onInitScope(adapter);
    if (adapter is! IntroductionMasamuneAdapter) {
      return;
    }
    _primary = adapter;
  }

  @override
  Widget onBuildApp(BuildContext context, Widget app) {
    return MasamuneAdapterScope<IntroductionMasamuneAdapter>(
      adapter: this,
      child: app,
    );
  }
}