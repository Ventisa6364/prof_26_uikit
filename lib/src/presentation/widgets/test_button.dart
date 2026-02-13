import 'package:flutter/material.dart';
import 'package:prof_26_uikit/src/presentation/theme/extension.dart';

class TestButton extends StatelessWidget {
  final String text;

  const TestButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return FilledButton(
      onPressed: () {
        debugPrint('testButton was pressed');
      },
      style: FilledButton.styleFrom(backgroundColor: theme.palette.icon),
      child: Text(text),
    );
  }
}
