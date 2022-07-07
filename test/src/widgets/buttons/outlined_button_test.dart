import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/pump_app.dart';

void main() {
  group('BASF button', () {
    testWidgets('BasfButtonTest', (WidgetTester tester) async {
      const text = 'Hi!';
      await tester.pumpApp(
        BasfOutlinedButton(
          text: text,
          leadingIcon: Icons.abc_outlined,
          trailingIcon: Icons.abc_outlined,
          onPressed: () {},
        ),
        BasfThemes.lightMainTheme(BasfThemeType.darkBlue),
      );

      expect(find.byType(BasfOutlinedButton), findsOneWidget);
      expect(find.text(text), findsOneWidget);
      // expect(find.byIcon(Icons.abc), findsOneWidget);
      // expect(find.byIcon(Icons.abc_rounded), findsOneWidget);
    });
  });
}
