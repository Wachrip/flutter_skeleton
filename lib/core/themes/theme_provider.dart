import 'package:as_travel_with_design/core/themes/theme_instances.dart';
import 'package:flutter/material.dart';

import 'dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightModeTheme.themeData;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightModeTheme.themeData) {
      themeData = darkMode;
    } else {
      themeData = lightModeTheme.themeData;
    }
  }
}
