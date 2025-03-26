import 'package:todo/core/constant/color_manager.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {
  final TextStyle textStyle;

  CustomTextStyle({TextStyle? textStyle})
      : textStyle = textStyle ?? const TextStyle();

  CustomTextStyle copyWith({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? fontFamily,
  }) {
    return CustomTextStyle(
      textStyle: textStyle.copyWith(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontFamily: fontFamily,
      ),
    );
  }
}
