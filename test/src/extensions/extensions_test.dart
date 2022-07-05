import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('Strings extensions', () {
    const text = 'exception test';
    test('Capitalized text', () {
      final result = text.toCapitalized();

      expect(
        result,
        equals('Exception test'),
      );
    });

    test('Capitalized without text', () {
      const String? test = null;
      final result = test?.toCapitalized();

      expect(
        result,
        equals(null),
      );
    });

    test('TitleCase with text', () {
      final result = text.toTitleCase();

      expect(
        result,
        equals('Exception Test'),
      );
    });

    test('TitleCase without text', () {
      const String? test = null;
      final result = test?.toTitleCase();

      expect(
        result,
        equals(null),
      );
    });
  });

  group('Widgets extensions', () {
    setUp(WidgetsFlutterBinding.ensureInitialized);
    const items = [
      Text('a'),
      Text('b'),
      Text('c'),
      Text('d'),
    ];
    test('Adding separator', () {
      final result = items.joinWithSeparator(HorizontalSpacer.semi());

      expect(
        result.length,
        equals(7),
      );
    });

    test('Adding separator on a single widget', () {
      final result = [const Text('a')].joinWithSeparator(
        HorizontalSpacer.semi(),
      );

      expect(
        result.length,
        equals(1),
      );
    });

    test('Adding space should equal same ammount of Widgets, but with padding',
        () {
      final result = items.spaced();

      expect(
        result.length,
        equals(items.length),
      );
    });

    testWidgets(
      'Finds padding when spacing the widgets',
      (tester) async {
        await tester.pumpApp(
          Column(children: items.spaced()),
        );
        expect(find.byType(Padding), findsNWidgets(items.length));
      },
    );
  });

// Group Log

// Group Map<K,V> ...

// SnackbarAction

}
