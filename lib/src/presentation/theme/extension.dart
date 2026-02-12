import 'package:flutter/material.dart';
import 'package:uikit_12_02_26/uikit_12_02_26.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Style styles = .new();

  CustomTheme({required this.palette});

  @override
  ThemeExtension<CustomTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<CustomTheme> lerp(
    covariant ThemeExtension<CustomTheme>? other,
    double t,
  ) {
    return this;
  }
}
