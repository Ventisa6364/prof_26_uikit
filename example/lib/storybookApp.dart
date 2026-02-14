import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:prof26_uikit/uikit_14-02-26.dart';

class Storybookapp extends StatelessWidget {
  const Storybookapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(wrapperBuilder: (BuildContext context, Widget? widget) {
      return MaterialAppWrapper(widget: widget);
    },
        stories: [BigButtonWidget.story]);
  }
}
