import 'package:flutter/material.dart';
import 'package:messeneger_postgres/global/theme/colors.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: AppLightColor.kPrimaryColor,
    scaffoldBackgroundColor: Colors.white70,
    iconTheme: const IconThemeData(color: AppLightColor.kPrimaryColor),
    colorScheme: const ColorScheme.light(
      primary: AppLightColor.kPrimaryColor,
      secondary: AppLightColor.kSecondaryColor,
      error: AppColors.kErrorColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: AppDarkColor.kPrimaryColor,
    scaffoldBackgroundColor: Colors.white10,
    iconTheme: const IconThemeData(color: AppDarkColor.kPrimaryColor),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppDarkColor.kPrimaryColor,
      secondary: AppDarkColor.kSecondaryColor,
      error: AppColors.kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppDarkColor.kcontentScaffold,
      selectedItemColor: AppDarkColor.kPrimaryColor,
      unselectedItemColor: AppDarkColor.kPrimaryColor.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: AppDarkColor.kPrimaryColor),
    ),
  );
}
