import 'package:flutter/widgets.dart';
import 'palette.dart';

class Style {
  final Palette palette;

  Style({required this.palette});

  TextStyle get defaultStyle => TextStyle(color: palette.text);
}
