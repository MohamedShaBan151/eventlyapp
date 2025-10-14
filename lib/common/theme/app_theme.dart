
import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightbgcolor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.maincolor,),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightbgcolor,
      iconTheme: IconThemeData(color: AppColors.maincolor),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColors.ligttextcolor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      
    ),
    textTheme: _gettextTheme(AppColors.ligttextcolor),

  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkbgcolor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.maincolor, brightness: Brightness.dark),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkbgcolor,
      iconTheme: IconThemeData(color: AppColors.maincolor),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColors.darktextcolor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      
    ),
    textTheme: _gettextTheme(AppColors.darktextcolor),
  );

  static TextTheme _gettextTheme (Color textcolor) {
    return TextTheme(
      labelSmall: TextStyle(
        color: textcolor,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        color: textcolor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: textcolor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: textcolor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: textcolor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: textcolor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: textcolor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: textcolor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      
    );
  }
}