import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class LightModeTheme {
  ThemeData themeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: Colors.grey.shade100,
      primary: Colors.grey.shade500,
      secondary: Colors.grey.shade300,
      tertiary: Colors.white,
      inversePrimary: Colors.grey.shade900,
    ),
    inputDecorationTheme: LightInputTheme().inputDecorationTheme(),
  );

  BoxDecoration get boxDecoration => BoxDecoration(
      border: Border.all(),
      borderRadius: const BorderRadius.all(Radius.circular(10.0)));
}

@injectable
class LightInputTheme {
  OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() => InputDecorationTheme(
        border: _border(Colors.yellow),
        enabledBorder: _border(Colors.grey),
        errorBorder: _border(Colors.red),
        focusedBorder: _border(Colors.blue),
        focusedErrorBorder: _border(Colors.red),
        disabledBorder: _border(Colors.black),
      );
}
