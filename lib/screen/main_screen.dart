import 'package:flutter/material.dart';
import 'package:flutter_coconut_riverpod/component/core.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../shared/app_style.dart';
import '../shared/routes.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: SafeArea(
        child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Center(child: Lottie.asset(AppConfig.logo, width: 200, height: 200),),
                CButton(textButton: AppConfig.labelListButton, colorBackground: Colors.red,
                onPressed: () {
                  context.push(AppRoutes.listItems);
                },),
                CButton(textButton: AppConfig.labelDemoButton, colorBackground: Colors.blue,
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