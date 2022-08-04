part of masamune_cli;

class FunctionsUsercountCliCommand extends CliCommand {
  const FunctionsUsercountCliCommand();

  @override
  String get description => "Userをカウントする仕組みのデプロイを行います。";

  @override
  Future<void> exec(YamlMap yaml, List<String> args) async {
    final bin = yaml["bin"] as YamlMap;
    final command = bin["firebase"] as String?;
    currentFiles.forEach((file) {
      var text = File(file.path).readAsStringSync();
      text = text.replaceAll(
        "// TODO_USER_COUNT_SERVER",
        "// [UserCount]\r\n    user_count: \"./functions/firebase/user_count\",\r\n",
      );
      File(file.path).writeAsStringSync(text);
    });
    applyFunctionsTemplate();
    final resultDeploy = await Process.start(
      command!,
      [
        "deploy",
        "--only",
        "functions",
      ],
      runInShell: true,
      workingDirectory: "${Directory.current.path}/firebase",
    );
    await resultDeploy.print();
  }
}
