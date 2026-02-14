import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/uikit_14-02-26.dart';

class MaterialAppWrapper extends StatelessWidget {
  final Widget? widget;

  const MaterialAppWrapper({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(500, 1000),
      builder: (BuildContext context, _) {
        return MaterialApp(
          theme: ThemeData().copyWith(
            extensions: [CustomTheme(palette: LightPalette())],
          ),
          darkTheme: ThemeData().copyWith(
            extensions: [CustomTheme(palette: DarkPalette())],
          ),
          debugShowCheckedModeBanner: false,
          home: Builder(
            builder: (BuildContext context) {
              var theme = CustomTheme.of(context);
              return Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: theme.palette.background,
                body: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 36.w,
                    vertical: 64.h,
                  ),
                  child: Center(
                    child:
                        widget ??
                        CircularProgressIndicator(
                          color: theme.palette.icon,
                          backgroundColor: theme.palette.background,
                        ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
