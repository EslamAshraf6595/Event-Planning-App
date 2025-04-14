import 'package:event_planning/utils/app_color.dart';
import 'package:event_planning/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge: AppStyles.inter20prime
    ),
    appBarTheme: AppBarTheme(
      backgroundColor:AppColor.primeColorlight,
      elevation: 0,
    ),
    primaryColor: AppColor.primeColorlight
  );

  static final ThemeData darktTheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge: AppStyles.inter20prime,
    ),
     appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primeColordark,
    ),
     primaryColor: AppColor.primeColordark
  );
}
