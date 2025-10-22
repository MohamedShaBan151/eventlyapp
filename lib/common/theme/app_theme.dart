
import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    splashColor: AppColors.maincolor,
    cardColor: AppColors.lightbgcolor,
    focusColor: AppColors.lightbgcolor,
    dividerTheme: DividerThemeData(
      color: AppColors.maincolor,
      thickness: 1,
    ),
    scaffoldBackgroundColor: AppColors.lightbgcolor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.maincolor,),
    hintColor: AppColors.greycolor,
    hoverColor: AppColors.greycolor,
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
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // elevation: 0,
      backgroundColor: AppColors.maincolor,
      selectedItemColor: AppColors.lightbgcolor,
      unselectedItemColor: AppColors.lightbgcolor,
      showSelectedLabels: false,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: TextStyle(
        color: AppColors.lightbgcolor,fontSize: 12, fontWeight: FontWeight.bold
      ),
    ),

  );
  static ThemeData darkTheme = ThemeData(
    splashColor: AppColors.lightbgcolor,
    focusColor: AppColors.maincolor,
    dividerTheme: DividerThemeData(
      color: AppColors.maincolor,
      thickness: 1,
    ),
    scaffoldBackgroundColor: AppColors.darkbgcolor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.maincolor, ),
    hintColor: AppColors.maincolor,
    hoverColor: AppColors.darktextcolor,
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
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 20,
      backgroundColor: AppColors.darkbgcolor,
      selectedItemColor: AppColors.lightbgcolor,
      unselectedItemColor: AppColors.lightbgcolor,
      showSelectedLabels: false,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: TextStyle(
        color: AppColors.lightbgcolor,fontSize: 12, fontWeight: FontWeight.bold
      ),
    ),
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