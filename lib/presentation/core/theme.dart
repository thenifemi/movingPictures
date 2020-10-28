import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  TextTheme _appTextTheme(TextTheme base) {
    return base.copyWith(
      //*[headline5] is for all kinds of headings EXCEPT Movie Title.
      headline5: base.headline5.copyWith(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
        color: AppColors.white,
      ),

      //*[headline6] is for Movie and series titles, even actor titles when necessary
      headline6: base.headline6.copyWith(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        color: AppColors.white,
      ),

      //*[bodyText1] is for movie info and likes. Alsp for regular app texts.
      bodyText1: base.bodyText1.copyWith(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        color: AppColors.white,
      ),

      //*[subtitle1] is for small deatils like movie duration, movie crew list and the likes
      subtitle1: base.subtitle1.copyWith(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
        color: AppColors.white,
      ),

      //*[Button] Obviously is for button text.
      button: base.button.copyWith(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
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
