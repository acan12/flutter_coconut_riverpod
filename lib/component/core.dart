import 'package:flutter/material.dart';

class CoreButton extends StatelessWidget {
  const CoreButton({
    super.key,
    required this.textButton,
    this.onPressed,
    this.colorBackground = Colors.green,
  });

  final String textButton;
  final Function? onPressed;
  final MaterialColor colorBackground;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(
        horizontal: 16.0,
        vertical: 7.0,
      ),
      child: ElevatedButton(
        onPressed: onPressed != null ? () => onPressed!() : null,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
