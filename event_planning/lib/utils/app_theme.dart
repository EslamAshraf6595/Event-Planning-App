import 'package:event_planning/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge: AppStyles.inter20prime
    )
  );

  static final ThemeData darktTheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge: AppStyles.inter20prime,
    )
  );
}
