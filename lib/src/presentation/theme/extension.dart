import 'package:flutter/material.dart';
import 'package:uikit_12_02_26/uikit_12_02_26.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Style styles;

  CustomTheme({required this.palette})  : styles = Style(palette: palette);

  @override
  ThemeExtension<CustomTheme> copyWith() {
    return CustomTheme(palette: palette);
  }

  @override
  ThemeExtension<CustomTheme> lerp(
    covariant ThemeExtension<CustomTheme>? other,
    double t,
  ) {
    return this;
  }

  static CustomTheme of(BuildContext context) =>
      Theme.of(context).extension<CustomTheme>()!;
  // var theme = CustomTheme.of(context);
}
