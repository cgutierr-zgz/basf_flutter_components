import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Paddings', () {
    test('Test Paddings', () {
      final edgeInsets = Paddings.defaultScreenPadding;

      expect(
        edgeInsets,
        equals(
          const EdgeInsets.fromLTRB(
            Dimens.paddingMediumLarge,
            Dimens.paddingMediumLarge,
            Dimens.paddingMediumLarge,
            Dimens.paddingMediumSmall,
          ),
        ),
      );
    });
  });
}
