import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      surface: Colors.grey.shade900,
      primary: Colors.grey.shade400,
      secondary: Colors.grey.shade700,
      tertiary: Colors.grey.shade800,
      inversePrimary: Colors.grey.shade300,
    ));
