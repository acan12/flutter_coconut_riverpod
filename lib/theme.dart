import 'package:flutter/material.dart';
import 'package:global_components_library/global_components_library.dart';

class CoconutTheme extends GCLAppTheme {
  CoconutTheme({required super.textColor, required super.fontFamily});

  @override
  ThemeData get themeData =>
      super.themeData.copyWith(
          appBarTheme: super.themeData.appBarTheme.copyWith(
              color: Colors.white,
              shape: GCLConstants.manualBorder(
                  bottomLeft: SRadius.r_16, bottomRight: SRadius.r_16),
              // actionsPadding: const EdgeInsets.all(16),
              foregroundColor: Colors.white,
              titleTextStyle: heading1.copyWith(fontSize: 20)));

  @override
  Color get primaryColor => const Color(0xFFFF0B55);

  @override
  Color get secondaryColor1 => const Color(0xFFF9E400);

  @override
  Color get secondaryColor2 => const Color(0xFFE9844C);

  @override
  Color get secondaryColor3 => const Color(0xFF939399);

  @override
  Color get tertiaryBlack => const Color(0xFF000000);

  @override
  Color get tertiaryWhite => const Color(0xFFFDFDFD);

  @override
  Color get tertiaryNeutral => Colors.white;

  @override
  Color get tertiaryColor4 => Colors.white;

  @override
  Color get blueColor => const Color(0xFFF2F4F5);

  @override
  Color get redColor => const Color(0xFFFF2020);

  @override
  Color get sustainabilityColor => const Color(0xFF20FF33);

  Color get _textColorBasedOnBrightness => switch (brightness) {
    (Brightness.light) => textColor,
    (Brightness.dark) => textColor.invert,
  };

  @override
  TextStyle get display1 => TextStyle(
    color: _textColorBasedOnBrightness,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 16,
    height: 1,
  );
}