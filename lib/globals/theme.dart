import 'package:portfolio/imports/common_imports.dart';

class AppTheme {
  static const double titleLarge = 42;
  static const double titleMedium = 30;
  static const double bodyLarge = 26;
  static const double bodyMedium = 20;
  static const double bodySmall = 16;

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.appColor,
    canvasColor: Colors.white,
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
    backgroundColor: const Color(0xfff8fcfa),
    cardColor: const Color(0xFFD5D5D5),
    fontFamily: 'Inter',
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
    cardTheme: const CardTheme(color: Colors.white60),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: titleLarge,
        fontFamily: "Nunito",
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: titleMedium,
        fontFamily: "Nunito",
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: bodyLarge,
        fontFamily: "Nunito",
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: bodyMedium,
        fontFamily: "Nunito",
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: bodySmall,
        fontFamily: "Nunito",
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
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
    fontFamily: 'Inter',
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
    dividerColor: Colors.white,
    backgroundColor: Colors.black87,
    cardColor: const Color(0xff444343),
    cardTheme: const CardTheme(color: Color(0xff444343)),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: titleLarge,
        fontFamily: "Nunito",
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: titleMedium,
        fontFamily: "Nunito",
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: bodyLarge,
        fontFamily: "Nunito",
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: bodyMedium,
        fontFamily: "Nunito",
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: bodySmall,
        fontFamily: "Nunito",
      ),
    ),
  );
}
