part of katana_storage;

class RuntimeStorageAdapter extends StorageAdapter {
  const RuntimeStorageAdapter({
    MemoryStorage? storage,
    this.rawData = const {},
  }) : _storage = storage;

  final Map<String, Uint8List> rawData;

  /// Designated storage.
  ///
  /// 指定のストレージ。
  MemoryStorage get storage {
    final storage = _storage ?? sharedStorage;
    if (storage._data.isEmpty && rawData.isNotEmpty) {
      storage.setRawData(rawData);
    }
    return storage;
  }

  final MemoryStorage? _storage;

  /// Common storage throughout the app.
  ///
  /// アプリ内全体での共通のストレージ。
  static final MemoryStorage sharedStorage = MemoryStorage();

  @override
  Future<void> delete(String path) async {
    await storage.delete(path);
  }

  @override
  Future<void> download(String fromPath, String toPath) async {
    final from = fromPath;
    final to = toPath;
    if (!storage.exists(from)) {
      throw Exception("File could not be found: $from");
    }
    if (storage.exists(to)) {
      await storage.delete(to);
    }
    await storage.write(to, await storage.read(from));
  }

  @override
  Future<String> fetchDownloadURI(String path) async => fetchPublicURI(path);

  @override
  String fetchPublicURI(String path) {
    return path;
  }

  @override
  Future<void> upload(String fromPath, String toPath) async {
    final from = fromPath;
    final to = toPath;
    if (!storage.exists(from)) {
      throw Exception("File could not be found: $from");
    }
    if (storage.exists(to)) {
      await storage.delete(to);
    }
    await storage.write(to, await storage.read(from));
  }

  @override
  Future<void> uploadWithBytes(Uint8List bytes, String toPath) async {
    final to = toPath;
    if (storage.exists(to)) {
      await storage.delete(to);
    }
    await storage.write(to, bytes);
  }
}
