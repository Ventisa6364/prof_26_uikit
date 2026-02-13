import 'package:flutter/widgets.dart';
import 'package:uikit_12_02_26/uikit_12_02_26.dart';

class Style {
  final Palette palette;

  Style({required this.palette});

  TextStyle get defaultStyle => TextStyle(color: palette.text);
}
