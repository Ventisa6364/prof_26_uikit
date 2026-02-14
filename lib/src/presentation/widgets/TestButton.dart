import 'package:flutter/material.dart';
import 'package:prof26_uikit/uikit_13-02-26.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TestButton extends StatelessWidget {
  final String text;

  const TestButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return FilledButton(
      onPressed: () {
        debugPrint('TestButton was pressed');
      },
      style: FilledButton.styleFrom(backgroundColor: theme.palette.button),
      child: Text(text, style: theme.styles.text),
    );
  }

  static Story get story => Story(
    name: 'testButton',
    builder: (BuildContext context) {
      String text = context.knobs.text(label: 'Text', initial: 'Hello');

      return TestButton(text: text);
    },
  );
}
