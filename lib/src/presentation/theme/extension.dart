import 'package:flutter/material.dart';

import '../../../uikit_13-02-26.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Style style;

  CustomTheme({required this.palette}) : style = Style(palette: palette);

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
}
