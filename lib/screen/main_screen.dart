import 'package:flutter/material.dart';

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
                const CustomButton(textButton: "Go Home Screen"),
                const CustomButton(textButton: "Go List Item Api Screen", colorBackground: Colors.red,),
                const CustomButton(textButton: "Go Unified Screen", colorBackground: Colors.blue,),
              ],
            )
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.textButton,
    this.colorBackground = Colors.green
  });

  final String textButton;
  final MaterialColor colorBackground;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 16.0, vertical: 7.0),
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          minimumSize: Size(double.infinity, 50),
          foregroundColor: Colors.white,
          backgroundColor: colorBackground,
          disabledBackgroundColor: Colors.grey,
        ),
        child: Text(textButton),
      ),
    );
  }

}