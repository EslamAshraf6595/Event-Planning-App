import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode courrentThem = ThemeMode.light;
  void changeThemeMode(ThemeMode newtheme) {
    if (courrentThem == newtheme)
      return;
    else
      courrentThem = newtheme;
    notifyListeners();
  }
}
