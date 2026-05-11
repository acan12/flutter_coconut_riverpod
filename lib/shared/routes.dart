import 'package:flutter_coconut_riverpod/screen/ui_widget_screen.dart';
import 'package:flutter_coconut_riverpod/screen/main_screen.dart';
import 'package:flutter_coconut_riverpod/screen/sample_home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter();

  late final GoRouter router = GoRouter(
    initialLocation: AppRoutes.root,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(path: '/', builder: (context, state) => MainScreen()),
      GoRoute(
          path: '/demo-app', builder: (context, state) => SampleHomeScreen()),
      GoRoute(
          path: '/ui-widgets', builder: (context, state) => UIWidgetScreen()),
    ],
  );
}

class AppRoutes {
  static const String root = '/';
  static const String demoApp = '/demo-app';
  static const String uiWidgets = '/ui-widgets';

}