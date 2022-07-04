import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:flutter/material.dart';

class ThemesOverviewScreen extends StatefulWidget {
  const ThemesOverviewScreen({super.key});

  @override
  State<ThemesOverviewScreen> createState() => _ThemesOverviewScreenState();
}

class _ThemesOverviewScreenState extends State<ThemesOverviewScreen> {
  BasfThemeType theme = BasfThemeType.darkGreen;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: BasfThemes.lightMainTheme(theme),
      child: Scaffold(
        appBar: AppBar(title: const Text('BASF Themes')),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: getThemeButtons(),
              ),
              const Divider(),
              BasfTextButton.contained(
                text: 'Theme button',
                onPressed: () =>
                    AppSnackBar.info(message: 'Button pressed').show(context),
              ),
              BasfTextButton.hint(
                context: context,
                text: 'Theme button',
                onPressed: () =>
                    AppSnackBar.info(message: 'Button pressed').show(context),
              ),
              BasfTextButton.transparent(
                context: context,
                text: 'Theme button',
                onPressed: () =>
                    AppSnackBar.info(message: 'Button pressed').show(context),
              ),
              BasfOutlinedButton(
                text: 'Outlined button',
                onPressed: () {},
              ),
            ].joinWithSeparator(VerticalSpacer.medium20()),
          ),
        ),
      ),
    );
  }

  List<Widget> getThemeButtons() {
    List<Widget> buttons;
    buttons = [];

    for (final element in BasfThemeType.values) {
      final button = TextButton(
        onPressed: () {
          setState(() => theme = element);
        },
        style: TextButton.styleFrom(
          backgroundColor: element.primaryColor,
        ),
        child: Text(element.name),
      );

      buttons.add(button);
    }

    return buttons;
  }
}
