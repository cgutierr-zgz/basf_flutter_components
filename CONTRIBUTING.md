# Contributing to basf_flutter_components library

- Document new Components (Widgets, Functions, etc...) **with examples** in both `.dart` files and `README.md` **Components** section
- If necessary add the new export to `basf_flutter_components.dart` file
- Fix all linting issues and run `flutter format .`
- Run `dart pub publish --dry-run` to test everything it's ok
- If a new version is going to be published, add it to both `CHANGELOG.md` and `pubspec.yaml`
- Test your code: create tests and generate a coverage file with very_good_cli using: `very_good test --coverage` afterwards, u can install `brew install lcov` and run `genhtml coverage/lcov.info -o coverage/html`to generate a `.html` report and see the actual code coverage.
- Run `flutter clean` in example folder

Use `dart pub publish` when everything is ready for a new version
