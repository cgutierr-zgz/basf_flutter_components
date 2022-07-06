import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/pump_app.dart';

void main() {
  group('BASF button', () {
    testWidgets('BasfButtonTest', (WidgetTester tester) async {
      await tester.pumpApp(
        BasfOutlinedButton(
          text: 'Hi',
          leadingIcon: Icons.abc_outlined,
          trailingIcon: Icons.abc_outlined,
          alignment: null,
          onPressed: () {},
        ),
        BasfThemes.lightMainTheme(BasfThemeType.darkBlue),
      );

      expect(find.byType(BasfTextButton), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
      // expect(find.byIcon(Icons.abc), findsOneWidget);
      // expect(find.byIcon(Icons.abc_rounded), findsOneWidget);
    });
  });
}
