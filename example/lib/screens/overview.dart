import 'package:basf_flutter_components/basf_flutter_components.dart';
import 'package:basf_flutter_components_example/screens/screens.dart';
import 'package:flutter/material.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BASF Components'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.paddingMedium20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BasfTextButton.contained(
              text: 'BASF Fonts',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const FontsScreen(),
                    ),);
              },
            ),
            const SizedBox(height: 15),
            BasfTextButton.contained(
              text: 'BASF Colors',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const ColorsOverviewScreen(),
                    ),);
              },
            ),
            const SizedBox(height: 15),
            BasfTextButton.contained(
              text: 'BASF Buttons',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const ButtonsOverviewScreen(),
                    ),);
              },
            ),
            const SizedBox(height: 15),
            BasfTextButton.contained(
              text: 'BASF Forms',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const FormsOverviewScreen(),
                    ),);
              },
            ),
            const SizedBox(height: 15),
            BasfTextButton.contained(
              text: 'BASF Dialogs',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const DialogOverviewScreen(),
                    ),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
