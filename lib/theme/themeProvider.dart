import 'package:chat_app/theme/dark_mode.dart';
import 'package:chat_app/theme/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ligtMode;
  ThemeData get themedata => _themeData;

  bool get isDarkNode => _themeData == darkMode; 

  set themeData (ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme () {
    if (_themeData == ligtMode){
      themeData = darkMode;
    } else {
      themeData = ligtMode;
    }
  }
}