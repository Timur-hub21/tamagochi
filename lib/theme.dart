import 'package:flutter/material.dart';

class MyTheme extends ChangeNotifier {
  static bool _isDark = true;

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.light : ThemeMode.dark;
  }
  
  void swtichTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
