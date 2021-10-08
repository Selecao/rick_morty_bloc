import 'package:flutter/material.dart';
import 'package:sc_03/components/app_divider.dart';

class AboutApp extends StatelessWidget {
  const AboutApp();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36.0, bottom: 24.0),
          child: Text(
            'О ПРИЛОЖЕНИИ',
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  height: 1.6,
                  letterSpacing: 1.5,
                ),
          ),
        ),
        Text(
          'Посвящается сериалу Rick and Morty. Здесь собраны персонажи, серии и '
          'локации а также интересные факты из данного сериала.',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                height: 1.5,
                letterSpacing: 0.25,
              ),
          textAlign: TextAlign.justify,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 36.0),
          child: const AppDivider(),
        ),
        Text(
          'ВЕРСИЯ ПРИЛОЖЕНИЯ',
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                height: 1.6,
                letterSpacing: 1.5,
              ),
        ),
        const SizedBox(height: 24.0),
        Text(
          'Rick & Morty  v1.0.0',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                height: 1.5,
                letterSpacing: .25,
              ),
        ),
      ],
    );
  }
}
