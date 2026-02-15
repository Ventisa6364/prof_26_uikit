import 'package:flutter/material.dart';
import 'package:prof26_uikit/uikit_14-02-26.dart';

class Style {
  final Palette palette;

  Style({required this.palette});

  TextStyle get text => TextStyle(color: palette.text);

  TextStyle get textSecondary => TextStyle(color: palette.textSecondary);

  TextStyle get nunitoMedium18 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 24/18,
    letterSpacing: 0
  );
}
