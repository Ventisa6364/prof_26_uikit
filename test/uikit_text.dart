import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prof26_uikit/uikit.dart';

void main() {
  group('Widgets', () {
    testWidgets('bidButtonWidget', (WidgetTester tester) async {
      late final CustomTheme theme;
      final String text = 'Button';
      await tester.pumpWidget(
        MaterialAppWrapper(
          widget: Builder(
            builder: (BuildContext context) {
              theme = CustomTheme.of(context);
              return BigButtonWidget.filled(
                theme: theme,
                onTap: () {},
                text: text,
              );
            },
          ),
        ),
      );
      FilledButton button = tester.widget(find.byType(FilledButton));
      expect(
        (button.style)!.backgroundColor?.resolve({}),
        theme.palette.button,
        reason: 'Background color should be equal to theme.palette.button',
      );
      Text textWidget = tester.widget(find.byType(Text));
      expect(textWidget.data, text, reason: 'buttonText');
    });
  });
}
