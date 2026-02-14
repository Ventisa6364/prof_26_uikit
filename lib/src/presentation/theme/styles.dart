import 'package:flutter/material.dart';
import 'package:prof26_uikit/src/presentation/theme/palette.dart';

class Styles {
  final Palette palette;

  Styles({required this.palette});

  TextStyle get text => TextStyle(color: palette.text);

  TextStyle get textSecondary => TextStyle(color: palette.textSecondary);
}
