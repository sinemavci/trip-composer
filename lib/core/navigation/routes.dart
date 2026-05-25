class Routes {
  Routes._init();

  static Routes? _instance;

  static Routes get instance => _instance ??= Routes._init();

  String get initial => '/home';
}
