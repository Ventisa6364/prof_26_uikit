import 'package:flutter/material.dart';

import '../../../uikit_13-02-26.dart';

class Style {
  final Palette palette;

  Style({required this.palette});

  TextStyle get text => TextStyle(color: palette.text);

  TextStyle get textSecondary => TextStyle(color: palette.textSecondary);
}
