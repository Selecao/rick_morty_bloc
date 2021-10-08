import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/screens/settings/widgets/about_app.dart';
import 'package:sc_03/screens/settings/widgets/theme_alert_dialog.dart';
import 'package:sc_03/screens/settings/widgets/theme_selector_widget.dart';
import 'package:sc_03/theme/main_theme.dart';
import 'package:sc_03/theme/theme_type.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Настройки',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                letterSpacing: 0.15,
                height: 1.4,
              ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>[
          const SizedBox(height: 36.0),
          Text(
            'ВНЕШНИЙ ВИД',
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  height: 1.6,
                  letterSpacing: 1.5,
                ),
          ),
          ThemeSelectorWidget(
            darkModeOptionTitle: themeName(
              Provider.of<MainTheme>(context).getThemeType(),
            ),
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (context) => ThemeAlertDialog(),
              );
            },
          ),
          const AppDivider(),
          const AboutApp(),
        ],
      ),
    );
  }
}
