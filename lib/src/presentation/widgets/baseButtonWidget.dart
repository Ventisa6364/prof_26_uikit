import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/src/presentation/theme/extension.dart';

abstract class BaseButtonWidget extends StatelessWidget {
  final CustomTheme theme;
  final Function() onTap;
  final Color backgroundColor;
  final Color? disabledBackgroundColor;
  final Color strokeColor;
  final Color textColor;
  final String text;

  const BaseButtonWidget({
    super.key,
    required this.theme,
    required this.onTap,
    required this.backgroundColor,
    this.disabledBackgroundColor,
    required this.strokeColor,
    required this.textColor,
    required this.text,
  });

  @protected
  double? get width;

  @protected
  double get height;

  @protected
  TextStyle get textStyle;

  @protected
  EdgeInsets get padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FilledButton(
        style: FilledButton.styleFrom(
          padding: padding,
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: BorderSide(width: 1.r, color: strokeColor),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: textStyle.copyWith(
            color: textColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
