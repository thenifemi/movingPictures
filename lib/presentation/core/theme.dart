import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  TextTheme _appTextTheme(TextTheme base) {
    return base.copyWith(
      headline5: base.headline5.copyWith(
        fontFamily: 'Montserrat',
        fontSize: 30.0,
        color: AppColors.white,
      ),
      headline6: base.headline6.copyWith(
        fontFamily: 'Roboto',
        fontSize: 15.0,
        color: AppColors.white,
      ),
      headline4: base.headline4.copyWith(
        fontFamily: 'Roboto',
        fontSize: 24.0,
        color: AppColors.white,
      ),
      headline3: base.headline3.copyWith(
        fontFamily: 'Roboto',
        fontSize: 18.0,
        color: AppColors.white,
      ),
      bodyText1: base.bodyText1.copyWith(
        fontFamily: 'Roboto',
        fontSize: 14.0,
        color: AppColors.white,
      ),
    );
  }

  final ThemeData base = ThemeData();
  return base.copyWith(
    textTheme: _appTextTheme(base.textTheme),
    iconTheme: IconThemeData(
      color: AppColors.gray,
      size: 20.0,
    ),
    primaryColor: AppColors.black,
    scaffoldBackgroundColor: AppColors.black,
    buttonColor: AppColors.red,
    backgroundColor: AppColors.black,
    appBarTheme: base.appBarTheme.copyWith(
      brightness: Brightness.dark,
      color: Colors.transparent,
    ),
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: AppColors.white,
      unselectedLabelColor: AppColors.gray,
    ),
  );
}
