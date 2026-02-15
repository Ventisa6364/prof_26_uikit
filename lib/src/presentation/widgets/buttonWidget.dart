import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/uikit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

abstract class BaseButtonWidget extends StatelessWidget {
  final CustomTheme theme;
  final Function()? onTap;
  final Color backgroundColor;
  final Color? disabledBackgroundColor;
  final Color strokeColor;
  final Color textColor;
  final String text;
  final double radius;

  const BaseButtonWidget({
    super.key,
    required this.theme,
    required this.onTap,
    required this.backgroundColor,
    required this.disabledBackgroundColor,
    required this.strokeColor,
    required this.textColor,
    required this.text,
    required this.radius,
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
            borderRadius: BorderRadius.circular(radius),
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


class BigButtonWidget extends BaseButtonWidget {
  const BigButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.text,
    required super.disabledBackgroundColor,
    required super.radius,
  });

  @override
  // TODO: implement height
  double get height => 48.h;

  @override
  // TODO: implement padding
  EdgeInsets get padding => EdgeInsets.all(13.r);

  @override
  // TODO: implement textStyle
  TextStyle get textStyle => theme.styles.nunitoMedium16;

  @override
  // TODO: implement width
  double? get width => 336.w;

  BigButtonWidget.filled({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.button,
         disabledBackgroundColor: theme.palette.buttonInactive,
         strokeColor: Colors.transparent,
         textColor: theme.palette.text,
         radius: 10.r,
       );

  BigButtonWidget.error({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.block,
         disabledBackgroundColor: theme.palette.block,
         strokeColor: Colors.transparent,
         textColor: theme.palette.error,
         radius: 10.r,
       );

  BigButtonWidget.simple({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.block,
         disabledBackgroundColor: Colors.transparent,
         strokeColor: Colors.transparent,
         textColor: theme.palette.text,
         radius: 10.r,
       );

  static Story get story => Story(
    name: 'BigButtonWidget',
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);

      void onTap() {
        debugPrint('Button was pressed');
      }

      String text = context.knobs.text(label: 'Text', initial: 'Войти');

      int type = context.knobs.options(
        label: 'type',
        initial: 0,
        options: [
          Option(label: 'filled', value: 0),
          Option(label: 'error', value: 1),
          Option(label: 'simple', value: 2),
        ],
      );

      bool active = context.knobs.boolean(label: 'Active', initial: true);

      switch (type) {
        case 0:
          return BigButtonWidget.filled(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case 1:
          return BigButtonWidget.error(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case _:
          return BigButtonWidget.simple(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
      }
    },
  );
}

class SmallButtonWidget extends BaseButtonWidget {
  const SmallButtonWidget({
    super.key,
    required super.theme,
    required super.onTap,
    required super.backgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.text,
    required super.disabledBackgroundColor,
    required super.radius,
  });

  @override
  // TODO: implement height
  double get height => 50.h;

  @override
  // TODO: implement padding
  EdgeInsets get padding => EdgeInsets.all(14.r);

  @override
  // TODO: implement textStyle
  TextStyle get textStyle => theme.styles.nunitoMedium16;

  @override
  // TODO: implement width
  double? get width => 178.w;

  SmallButtonWidget.filled({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.block,
         disabledBackgroundColor: theme.palette.buttonInactive,
         strokeColor: Colors.transparent,
         textColor: theme.palette.button,
         radius: 5.r,
       );

  SmallButtonWidget.error({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.block,
         disabledBackgroundColor: theme.palette.block,
         strokeColor: Colors.transparent,
         textColor: theme.palette.error,
         radius: 5.r,
       );

  SmallButtonWidget.simple({
    super.key,
    required super.theme,
    required super.onTap,
    required super.text,
  }) : super(
         backgroundColor: theme.palette.block,
         disabledBackgroundColor: Colors.transparent,
         strokeColor: Colors.transparent,
         textColor: theme.palette.button,
         radius: 5.r,
       );

  static Story get story => Story(
    name: 'SmallButtonWidget',
    builder: (BuildContext context) {
      var theme = CustomTheme.of(context);

      void onTap() {
        debugPrint('Button was pressed');
      }

      String text = context.knobs.text(label: 'Text', initial: 'Go to file');

      int type = context.knobs.options(
        label: 'type',
        initial: 0,
        options: [
          Option(label: 'filled', value: 0),
          Option(label: 'error', value: 1),
          Option(label: 'simple', value: 2),
        ],
      );

      bool active = context.knobs.boolean(label: 'Active', initial: true);

      switch (type) {
        case 0:
          return SmallButtonWidget.filled(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case 1:
          return SmallButtonWidget.error(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
        case _:
          return SmallButtonWidget.simple(
            theme: theme,
            onTap: active ? onTap : null,
            text: text,
          );
      }
    },
  );
}
