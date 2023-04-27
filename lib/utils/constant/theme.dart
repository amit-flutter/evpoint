import 'package:evpoint/utils/imports.dart';

//Base Color
const Color kPrimaryColor = Color(0xFF26B96A);
const Color kSecondaryColor = Color(0xFFE6F8EE);
const Color kScaffoldBackgroundColor = Color(0xFFFEFEFE);

//App Theme Color
const Color kPrimaryTextColor = Color(0xFF07122A);
const Color kSecondaryTextColor = Color(0xFF9DA0A8);
const Color kThirdTextColor = Color(0xFFFEFEFE);
const Color kFourthTextColor = Color(0xFF26B96A);

ThemeData kLightTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
  dividerColor: kSecondaryTextColor.withOpacity(0.7),
  brightness: Brightness.light,
  textTheme: const TextTheme(
    bodyMedium: StyleConst.kDefaultTextStyle,
    headlineMedium: TextStyle(color: kPrimaryTextColor, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(color: kPrimaryTextColor, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(color: kPrimaryTextColor),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(15),
      shadowColor: MaterialStateProperty.all(kPrimaryColor.withOpacity(0.2)),
      backgroundColor: MaterialStateProperty.all(kSecondaryColor),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    focusColor: kPrimaryColor,
    contentPadding: const EdgeInsets.only(left: 20),
    labelStyle: StyleConst.kDefaultTextStyle,
    suffixIconColor: kPrimaryColor,
    border: StyleConst.outLineBorderStyle,
    enabledBorder: StyleConst.outLineBorderStyle,
    errorBorder: StyleConst.outLineBorderStyle.copyWith(
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
    focusedBorder: StyleConst.outLineBorderStyle.copyWith(
      borderSide: const BorderSide(color: kPrimaryColor, width: 2),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      textStyle: StyleConst.kDefaultTextStyle,
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: kPrimaryColor,
    selectionColor: kPrimaryColor.withOpacity(0.3),
  ),
);

///Dark Colors
const Color kDarkPrimaryColor = Color(0xFF07122A);
const Color kDarkSecondaryColor = Color(0xDD404148);
const Color kDarkScaffoldBackgroundColor = Color(0xFF181A21);

//App Theme Color
const Color kDarkPrimaryTextColor = Color(0xFFFFFFFF);
const Color kDarkSecondaryTextColor = Color(0xFF9DA0A8);
const Color kDarkThirdTextColor = Color(0xFFFFFFFF);

ThemeData kDarkTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: kDarkScaffoldBackgroundColor,
  brightness: Brightness.dark,
  dividerColor: kDarkSecondaryTextColor,
  textTheme: const TextTheme(
    bodyMedium: StyleConst.kDefaultTextStyle,
    headlineMedium: TextStyle(color: kDarkPrimaryTextColor, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(color: kDarkPrimaryTextColor, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(color: kDarkPrimaryTextColor),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(15),
      shadowColor: MaterialStateProperty.all(kPrimaryColor.withOpacity(0.2)),
      backgroundColor: MaterialStateProperty.all(kDarkSecondaryColor),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    focusColor: kPrimaryColor,
    contentPadding: const EdgeInsets.only(left: 20),
    labelStyle: StyleConst.kDefaultTextStyle,
    suffixIconColor: kPrimaryColor,
    border: StyleConst.outLineBorderStyle,
    enabledBorder: StyleConst.outLineBorderStyle,
    errorBorder: StyleConst.outLineBorderStyle.copyWith(
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
    focusedBorder: StyleConst.outLineBorderStyle.copyWith(
      borderSide: const BorderSide(color: kPrimaryColor, width: 2),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      textStyle: StyleConst.kDefaultTextStyle,
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: kPrimaryColor,
    selectionColor: kPrimaryColor.withOpacity(0.3),
  ),
);
