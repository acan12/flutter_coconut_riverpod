import 'package:flutter/material.dart';
import 'package:flutter_coconut_riverpod/component/core.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../shared/routes.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Bar')),
      body: SafeArea(
        child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Center(child: Lottie.asset('assets/lottie/fire.json', width: 200, height: 200),),
                const CoreButton(textButton: "Go List Item Api Screen", colorBackground: Colors.red,),
                CoreButton(textButton: "Go Unified Screen", colorBackground: Colors.blue,
                  onPressed: () {
                    context.push(AppRoutes.demoApp);
                  },
                ),
              ],
            )
        ),
      ),
    );
  }
}