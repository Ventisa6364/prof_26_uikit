import 'package:flutter/material.dart';
import '../../../uikit_13-02-26.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TestButton extends StatelessWidget {
  final String text;

  const TestButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return FilledButton(
      onPressed: () {
        debugPrint('test button was pressed');
      },
      child: Text(text, style: theme.style.text),
    );
  }

  static Story get story => Story(
    name: 'TestButton',
    builder: (BuildContext context) {
      String text = context.knobs.text(label: 'text', initial: 'idk');

      return TestButton(text: text);
    },
  );
}
