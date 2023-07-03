import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryBackgroundColor = Color.fromRGBO(245, 245, 245, 1);
const primaryBackgroundColor2 = Color.fromRGBO(252, 253, 253, 1);
const primaryTextColor = Color.fromRGBO(105, 108, 255, 1);
const titleTextColor = Color.fromRGBO(67, 89, 113, 1);

const primaryStyleColor = Color.fromRGBO(105, 108, 255, 1);

const primaryButtonColor = Color.fromRGBO(105, 108, 255, 1);
const primaryDisableColor = Color.fromRGBO(133, 146, 163, 1);


String? validatePassword(String value){
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  RegExp badDoubleQuoteRegex = RegExp(r'(?=.*?["])');
  RegExp badSemicolonRegex = RegExp(r'(?=.*?[;:])');
  RegExp badSingleQuoteRegex = RegExp(r"(?=.*?['])");
  RegExp badSpaceRegex = RegExp(r'(?=.*?[\s])');
  if (value.isEmpty){
    return 'Введите пароль';
  }
  else {
    if (badSpaceRegex.hasMatch(value)){
      return 'Пароль не должен содержать пробелы';
    }
    else if (badSemicolonRegex.hasMatch(value)){
      return 'Пароль не должен содержать : или ;';
    }
    else if (badSingleQuoteRegex.hasMatch(value) || badDoubleQuoteRegex.hasMatch(value)){
      return 'Пароль не должен содержать кавычки';
    }
    else if (!regex.hasMatch(value)) {
      return 'Пароль должен содержать:\n1 большую букву\n1 малую букву\n1 число\nи более 8 символов';
    }
    else {
      return null;
    }
  }
}

/*TextStyle CustomFont(
    String fontFamily, {
      TextStyle? textStyle,
      Color? color,
      Color? backgroundColor,
      double? fontSize,
      FontWeight? fontWeight,
      FontStyle? fontStyle,
      double? letterSpacing,
      double? wordSpacing,
      TextBaseline? textBaseline,
      double? height,
      Locale? locale,
      Paint? foreground,
      Paint? background,
      List<Shadow>? shadows,
      List<FontFeature>? fontFeatures,
      TextDecoration? decoration,
      Color? decorationColor,
      TextDecorationStyle? decorationStyle,
      double? decorationThickness,
    }) {
  try {
    return GoogleFonts.getFont(
      fontFamily,
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  } catch (ex) {
    return GoogleFonts.getFont(
      "Source Sans Pro",
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}*/
