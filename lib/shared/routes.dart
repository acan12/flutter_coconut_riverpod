import 'package:flutter_coconut_riverpod/screen/list_items_screen.dart';
import 'package:flutter_coconut_riverpod/screen/main_screen.dart';
import 'package:flutter_coconut_riverpod/screen/sample_home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter();

  late final GoRouter router = GoRouter(
    initialLocation: AppRoutes.root,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(path: AppRoutes.root, builder: (context, state) => MainScreen()),
      GoRoute(
          path: AppRoutes.demoApp, builder: (context, state) => SampleHomeScreen()),
      GoRoute(
          path: AppRoutes.listItems, builder: (context, state) => ListItemsScreen()),
    ],
  );
}

class AppRoutes {
  static const String root = '/';
  static const String demoApp = '/demo-app';
  static const String listItems = '/list-items';

}