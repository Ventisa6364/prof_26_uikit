import 'package:flutter/widgets.dart';
import 'palette.dart';

class Style {
  final Palette palette;

  Style({required this.palette});

  TextStyle get text => TextStyle(color: palette.text);

  TextStyle get textSecondary => TextStyle(color: palette.textSecondary);
}
