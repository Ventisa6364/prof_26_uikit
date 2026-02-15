import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:prof26_uikit/uikit.dart';

class StorybookApp extends StatelessWidget {
  const StorybookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      wrapperBuilder: (BuildContext context, Widget? widget) {
        return MaterialAppWrapper(widget: widget);
      },
      stories: [TestButton.story, BigButtonWidget.story, SmallButtonWidget.story],
    );
  }
}
