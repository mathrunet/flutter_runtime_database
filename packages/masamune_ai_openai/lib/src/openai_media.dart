part of masamune_ai_openai;

/// Provides image generation capabilities using OpenAI's Dall-E.
///
/// Images can be generated by passing a prompt to [create].
///
/// With [value] you can get a list of images generated up to that point.
///
/// OpenAIのDall-Eを使用した画像生成機能を提供します。
///
/// [create]にプロンプトを渡すことで、画像を生成できます。
///
/// [value]でそれまで生成された画像のリストを取得できます。
class OpenAIMedia extends ChangeNotifier
    implements ValueListenable<List<OpenAIMediaImg>> {
  /// Provides image generation capabilities using OpenAI's Dall-E.
  ///
  /// Images can be generated by passing a prompt to [create].
  ///
  /// With [value] you can get a list of images generated up to that point.
  ///
  /// OpenAIのDall-Eを使用した画像生成機能を提供します。
  ///
  /// [create]にプロンプトを渡すことで、画像を生成できます。
  ///
  /// [value]でそれまで生成された画像のリストを取得できます。
  OpenAIMedia({
    this.user = "user",
  });

  /// User Name.
  ///
  /// ユーザーの名前。
  final String user;

  @override
  List<OpenAIMediaImg> get value => _value;
  final List<OpenAIMediaImg> _value = [];

  /// If it is being created, it waits until the creation is complete.
  ///
  /// 作成中の場合は、作成完了まで待機します。
  Future<List<OpenAIMediaImg>>? get creating => _createCompleter?.future;
  Completer<List<OpenAIMediaImg>>? _createCompleter;

  /// A new image is generated by passing [prompt].
  ///
  /// You can specify the image size with [size].
  ///
  /// You can specify the number of images to be generated at a time with [count].
  ///
  /// The generated OpenAI images are retrieved asynchronously within each object. By monitoring each element with [ListenableListener], you can wait for processing for each item in the list.
  ///
  /// [prompt]を渡すことで新しく画像を生成します。
  ///
  /// [size]で画像サイズを指定することができます。
  ///
  /// [count]で１度に生成する画像の数を指定することができます。
  ///
  /// 生成されたOpenAIの画像は、各オブジェクト内で非同期で取得されます。[ListenableListener]で各要素を監視することでリストの項目ごとで処理を待つことができます。
  Future<List<OpenAIMediaImg>> create(
    String prompt, {
    OpenAIImageSize size = OpenAIImageSize.size512,
    int count = 1,
  }) async {
    if (_createCompleter != null) {
      return creating!;
    }
    _createCompleter = Completer();
    final responses = List.generate(
      count,
      (index) => OpenAIMediaImg._(
        width: size.size,
        height: size.size,
        completer: Completer(),
      ),
    );
    try {
      _value.addAll(responses);
      final res = await OpenAI.instance.image.create(
        prompt: prompt,
        size: size,
        n: count,
        responseFormat: OpenAIResponseFormat.url,
      );
      notifyListeners();
      if (res.data.length != count) {
        throw Exception("Failed to get response from openai_generations.");
      }
      for (int i = 0; i < count; i++) {
        responses[i]._complete(url: res.data[i].url);
      }
      notifyListeners();
      _createCompleter?.complete(responses);
      _createCompleter = null;
      return responses;
    } catch (e) {
      for (final response in responses) {
        response._error(e);
      }
      _createCompleter?.completeError(e);
      _createCompleter = null;
      rethrow;
    } finally {
      for (final response in responses) {
        response._finally();
      }
      _createCompleter?.complete([]);
      _createCompleter = null;
    }
  }

  /// Clear all data.
  ///
  /// データをすべてクリアします。
  void clear() {
    if (value.isEmpty) {
      return;
    }
    value.clear();
    notifyListeners();
  }
}

/// Maintains information on images created by OpenAI.
///
/// This itself inherits from [ChangeNotifier] and can wait asynchronously for data sent.
///
/// See [value] for the actual image. The URL of the image is stored here.
///
/// OpenAIで作成した画像の情報を保持します。
///
/// これ自体が[ChangeNotifier]を継承しており、送信したデータを非同期で待つことができます。
///
/// 実際の画像は[value]を参照してください。こちらに画像のURLが格納されています。
class OpenAIMediaImg extends ChangeNotifier
    implements ValueListenable<String?> {
  OpenAIMediaImg._({
    String? value,
    required this.width,
    required this.height,
    Completer? completer,
  })  : _value = value,
        _completer = completer;

  /// [OpenAIMediaImg] is generated by passing [json].
  ///
  /// [json]を渡すことで、[OpenAIMediaImg]を生成します。
  factory OpenAIMediaImg.fromJson(Map<String, dynamic> json) {
    return OpenAIMediaImg._(
      value: json["url"] ?? "",
      width: json["width"] ?? 0.0,
      height: json["height"] ?? 0.0,
    );
  }

  @override
  String? get value => _value;
  String? _value;

  /// Width of the image.
  ///
  /// 画像の横幅。
  final double width;

  /// Image height.
  ///
  /// 画像の縦幅。
  final double height;

  /// [ImageProvider] generated from the URL of the image that can be retrieved by [value].
  ///
  /// [value]で取得できる画像のURLから生成された[ImageProvider]。
  ImageProvider? get image => value == null ? null : NetworkImage(value!);

  /// In case of an error, `true`.
  ///
  /// エラーの場合、`true`になります。
  bool get error => __error;
  bool __error = false;

  /// If a response is awaited, [Future] is returned.
  ///
  /// This can be used to wait for a response.
  ///
  /// レスポンス待ちの場合、[Future]を返します。
  ///
  /// これを利用して、レスポンスを待つことができます。
  Future<void>? get future => _completer?.future ?? _downloadCompleter?.future;
  Completer<void>? _completer;

  Completer<Uint8List?>? _downloadCompleter;

  /// The generated images are downloaded and returned in [Uint8List].
  ///
  /// 生成された画像をダウンロードして、[Uint8List]で返します。
  Future<Uint8List?> download() async {
    if (_downloadCompleter != null) {
      return _downloadCompleter?.future;
    }
    if (value.isEmpty) {
      throw Exception("URL does not exist.");
    }
    _downloadCompleter = Completer();
    try {
      final res = await Api.get(value!);
      if (res.statusCode != 200) {
        throw Exception("Failed to download image.");
      }
      notifyListeners();
      _downloadCompleter?.complete(res.bodyBytes);
      _downloadCompleter = null;
      return res.bodyBytes;
    } catch (e) {
      _downloadCompleter?.completeError(e);
      _downloadCompleter = null;
      rethrow;
    } finally {
      _downloadCompleter?.complete(null);
      _downloadCompleter = null;
    }
  }

  void _complete({
    required String url,
  }) {
    _value = url;
    notifyListeners();
    _finally();
  }

  void _error(Object e) {
    __error = true;
    _value = e.toString();
    notifyListeners();
    _completer?.completeError(e);
    _completer = null;
  }

  void _finally() {
    _completer?.complete();
    _completer = null;
  }

  /// Convert [OpenAIChatMsg] to [Map].
  ///
  /// [OpenAIChatMsg]を[Map]に変換します。
  Map<String, dynamic> toJson() {
    return {
      "url": value,
      "width": width,
      "height": height,
    };
  }
}

/// Provides extension methods for [OpenAIImageSize].
///
/// [OpenAIImageSize]の拡張メソッドを提供します。
extension on OpenAIImageSize {
  /// Returns the actual size from [OpenAIImageSize] as [double].
  ///
  /// [OpenAIImageSize]から実際のサイズを[double]で返します。
  double get size {
    switch (this) {
      case OpenAIImageSize.size256:
        return 256;
      case OpenAIImageSize.size512:
        return 512;
      case OpenAIImageSize.size1024:
        return 1024;
    }
  }
}