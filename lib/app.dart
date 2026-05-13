import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coconut_riverpod/screen/main_screen.dart';
import 'package:flutter_coconut_riverpod/shared/routes.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: F.title,
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: AppRouter().router,
    );
    // return MaterialApp(
    //   title: F.title,
    //   theme: ThemeData(primarySwatch: Colors.blue),
    //   home: _flavorBanner(child: MainScreen(), show: kDebugMode),
    // );
  }

  Widget _flavorBanner({required Widget child, bool show = true}) => show
      ? Banner(
          location: BannerLocation.topStart,
          message: F.name.toUpperCase(),
          color: Colors.green.withAlpha(150),
          textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
            letterSpacing: 1.0,
          ),
          textDirection: TextDirection.ltr,
          child: child,
        )
      : Container(child: child);
}
