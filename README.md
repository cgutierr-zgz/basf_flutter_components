# basf_flutter_components

<p align="center">
  <img src="https://raw.githubusercontent.com/BASF-Mobile-Solutions/basf_flutter_components/master/assets/basf_logo.png" />
</p>	

<p align="center">
  <a href="https://pub.dev/packages/basf_flutter_components">
     <img alt="pub" src="https://img.shields.io/pub/v/basf_flutter_components.svg?label=basf_flutter_components">
  </a>
  <a href="mailto:Mobile-Solutions@basf.com">
     <img alt="email" src="https://img.shields.io/badge/Email-BASF%20Mobile%20Solutions-blue.svg">
  </a>
  <a href="https://pub.dev/packages/very_good_analysis">
     <img alt="style" src="https://img.shields.io/badge/style-very_good_analysis-B22C89.svg">
  </a>
  <a href="https://opensource.org/licenses/BSD-3-Clause">
     <img alt="license" src="https://img.shields.io/badge/license-BSD 3-green.svg">
  </a>
</p>

A BASF Flutter components library for Flutter

## Installing

Add BASF Flutter Components to your pubspec.yaml file:

```yaml
dependencies:
  basf_flutter_components:
```

Import it the library to your file:

```dart
import 'package:basf_flutter_components/basf_flutter_components.dart';
```

Use your IDE IntelliSense to import any of the [Components](#components) built into the library
- [Theme](#theme)
- [Widgets](#widgets)
- [Animations](#animations)

---

## BASF Flutter Components

- ### Theme

#### Themes
```dart
theme: BasfThemes.lightMainTheme(BasfThemeType.darkBlue),
/// etc...
```
![themes](./assets/screenshots/themes.gif)
#### Colors
```dart
BasfColors.red,
/// etc...
```
![colors](./assets/screenshots/colors.png)

- ### Widgets
#### AppSnackBar
```dart
AppSnackBar.info(message: 'Button pressed').show(context);
// or
AppSnackBar.error(message: 'Button pressed').show(context);
```

![snackbar](./assets/screenshots/info.png)
![snackbar_error](./assets/screenshots/error.png)

#### BasfTextButton
```dart
BasfTextButton.contained(
        text: 'Styled Button',
        onPressed: () => _onPressed(context),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          backgroundColor: BasfColors.red,
        ),
      ),
// or
BasfTextButton.transparent(
      context: context,
      text: 'Expanded Button',
      expanded: true,
      onPressed: () => _onPressed(context),
),
// or
BasfTextButton.hint(
      context: context,
      text: 'Hint Button',
      onPressed: () => _onPressed(context),
),
```

![text_buttons](./assets/screenshots/text_buttons.png)

#### OutlinedButton
```dart
BasfOutlinedButton(
              text: 'Outlined Buttons',
              onPressed: () { /* --- */ },
            );
```

![outlined_buttons](./assets/screenshots/outlined_buttons.png)

#### TransparentButton
```dart
BasfTextButton.transparent(
    context: context,
    text: 'Only Text',
    onPressed: () => _onPressed(context),
),
```

![transaparent_buttons](./assets/screenshots/transaparent_buttons.png)

#### SliderButton
```dart
SliderButton(
    text: 'Basf Slider button',
    onConfirmation: () {},
),
```
![slider_button](./assets/screenshots/slider_button.png)


- ### Animations
	- #### Fade
```dart
Fade(
    visible: value, // Update this value
    child: Text('Sup'),
);
```


You can find how to use all of this components at the example project
