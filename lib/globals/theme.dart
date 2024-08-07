import 'package:portfolio/common_imports.dart';

class AppTheme {
  static const double titleLarge = 30;
  static const double titleMedium = 24;
  static const double bodyLarge = 20;
  static const double bodyMedium = 16;
  static const double bodySmall = 14;
  static const double labelLarge = 12;
  static const double labelMedium = 8;

  static var fontFamily = 'FiraCode';

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.appColor,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xff0b0b0b),
    colorScheme: const ColorScheme.light(
      outline: Colors.transparent,
      surface: Colors.white,
      primary: AppColor.appColor,
      onSurface: Colors.black,
      onPrimary: Colors.white,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.appColor,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    dividerColor: const Color(0xfff0f0f0),
    cardColor: const Color(0xff9f9f9f),
    cardTheme: const CardTheme(color: Color(0xFF0E0E0E)),
    fontFamily: 'FiraCode',
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.appColor,
      disabledColor: Colors.grey.withOpacity(0.1),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColor.appColor,
        onPrimary: Colors.white,
        secondary: AppColor.appDeepRed,
        onSecondary: Colors.white,
        error: AppColor.appColor,
        onError: Colors.white,
        background: AppColor.appColor,
        onBackground: Colors.white,
        surface: AppColor.appColor,
        onSurface: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: titleLarge,
        fontFamily: fontFamily,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: titleMedium,
        fontFamily: fontFamily,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: bodyLarge,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: bodyMedium,
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: bodySmall,
        fontFamily: fontFamily,
      ),
      labelLarge: TextStyle(
        color: Colors.white,
        fontSize: labelLarge,
        fontFamily: fontFamily,
      ),
      labelMedium: TextStyle(
        color: Colors.white,
        fontSize: labelMedium,
        fontFamily: fontFamily,
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: const Color(0xff444343),
    colorScheme: const ColorScheme.dark(
      outline: Colors.transparent,
      surface: Color(0xff444343),
      primary: AppColor.appColor,
      onSurface: Colors.white,
      onPrimary: Colors.white,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.grey,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    fontFamily: 'FiraCode',
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.grey.withOpacity(0.8),
      disabledColor: Colors.grey.withOpacity(0.1),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.white,
        onPrimary: Colors.white,
        secondary: Colors.grey.withOpacity(0.1),
        onSecondary: Colors.white,
        error: Colors.grey.withOpacity(0.1),
        onError: Colors.white,
        background: Colors.grey.withOpacity(0.1),
        onBackground: Colors.white,
        surface: Colors.grey.withOpacity(0.1),
        onSurface: Colors.white,
      ),
    ),
    dividerColor: Colors.grey,
    cardColor: const Color(0xFFE7E7E7),
    cardTheme: const CardTheme(color: Color(0xfff5f5f5)),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: titleLarge,
        fontFamily: fontFamily,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: titleMedium,
        fontFamily: fontFamily,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: bodyLarge,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: bodyMedium,
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: bodySmall,
        fontFamily: fontFamily,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
        fontSize: labelLarge,
        fontFamily: fontFamily,
      ),
      labelMedium: TextStyle(
        color: Colors.black,
        fontSize: labelMedium,
        fontFamily: fontFamily,
      ),
    ),
  );
}
