import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/src/presentation/theme/palette.dart';

class Styles {
  final Palette palette;

  Styles({required this.palette});

  TextStyle get text => TextStyle(color: palette.text);

  TextStyle get textSecondary => TextStyle(color: palette.textSecondary);

  TextStyle get nunitoMedium18 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    height: 24 / 18,
    letterSpacing: 0,
  );
}
