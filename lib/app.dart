import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coconut_riverpod/theme.dart';
import 'package:global_components_library/global_components_library.dart';

import 'flavors.dart';
import 'pages/my_home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    GCLConfiguration.initComponentsTheme(
      theme: CoconutTheme(textColor: Colors.black, fontFamily: "Zeepay_B"),
    );
    return MaterialApp(
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _flavorBanner(child: MyHomePage(), show: kDebugMode),
    );
  }

  Widget _flavorBanner({required Widget child, bool show = true}) => show
      ? Banner(
          location: BannerLocation.topStart,
          message: F.name,
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
