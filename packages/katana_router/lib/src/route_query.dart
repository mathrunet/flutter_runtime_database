part of katana_router;

/// Base class for creating queries to perform page transitions.
///
/// Enter the path name of the page in [path] and make [route] return [Route] for the page transition.
///
/// You can get the object corresponding to the query from [value].
///
/// ページ遷移を行うためのクエリーを作成するためのベースクラス。
///
/// [path]にページのパス名を入力し、[route]にページ遷移を行うための[Route]を返すようにします。
///
/// [value]からクエリーに対応したオブジェクトを取得することができます。
@immutable
abstract class RouteQuery {
  /// Base class for creating queries to perform page transitions.
  ///
  /// Enter the path name of the page in [path] and make [route] return [Route] for the page transition.
  ///
  /// You can get the object corresponding to the query from [value].
  ///
  /// ページ遷移を行うためのクエリーを作成するためのベースクラス。
  ///
  /// [path]にページのパス名を入力し、[route]にページ遷移を行うための[Route]を返すようにします。
  ///
  /// [key]からクエリーに対応したオブジェクトを取得することができます。
  const RouteQuery();

  /// The path name of the page.
  ///
  /// ページのパス名。
  String get path;

  /// A key to identify the query.
  ///
  /// It can be obtained as an object of [E] by specifying [E].
  ///
  /// クエリーを識別するためのキー。
  ///
  /// [E]を指定することで[E]のオブジェクトとして取得できます。
  E? key<E>();

  /// Make [AppPageRoute] return to perform page transitions.
  ///
  /// You can specify the method of transition, etc. by passing [TransitionQuery] for page transitions to [query].
  ///
  /// ページ遷移を行うための[AppPageRoute]を返すようにします。
  ///
  /// [query]にページ遷移を行う際の[TransitionQuery]を渡すことでトランジションの方法などを指定できます。
  AppPageRoute<E> route<E>(TransitionQuery? query);

  /// The reroute settings associated with this page are done by giving a list of classes that extend [RedirectQuery].
  ///
  /// This reroute setting applies only to transitions to this page.
  ///
  /// このページに紐づくリルート設定を[RedirectQuery]を継承したクラスのリストを与えることで行います。
  ///
  /// このリルート設定はこのページに遷移する際のみに適用されます。
  List<RedirectQuery> redirect() => const [];

  @override
  String toString() => path;

  @override
  bool operator ==(Object other) => hashCode == other.hashCode;

  @override
  int get hashCode => path.hashCode;
}
