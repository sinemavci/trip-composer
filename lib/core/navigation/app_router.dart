import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_composer/core/navigation/routes.dart';
import 'package:trip_composer/screens/home_page.dart';

class AppRouter {
  AppRouter._();

  static AppRouter? _instance;

  static AppRouter get instance {
    _instance ??= AppRouter._();
    return _instance!;
  }

  BuildContext? get applicationContext => navigatorKey.currentContext;
  final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  late final GoRouter router = GoRouter(
    initialLocation: Routes.instance.initial,
    navigatorKey: navigatorKey,
    observers: [
      routeObserver,
    ],
    routes: <GoRoute>[
      GoRoute(
        path: Routes.instance.initial,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
