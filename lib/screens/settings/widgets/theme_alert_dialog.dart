import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sc_03/resources/constants.dart';
import 'package:sc_03/theme/main_theme.dart';
import 'package:sc_03/theme/theme_type.dart';

class ThemeAlertDialog extends StatelessWidget {
  ThemeAlertDialog();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<MainTheme>(context);

    return AlertDialog(
      backgroundColor: Theme.of(context).canvasColor,
      title: Text(
        'Темная тема',
        style: Theme.of(context).textTheme.headline6?.copyWith(
              letterSpacing: 0.15,
              height: 1.4,
            ),
      ),
      contentPadding: EdgeInsets.zero,
      insetPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < Constants.themeModeTitles.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.only(left: 10.0, right: 44.0),
              horizontalTitleGap: 8.0,
              title: Text(
                Constants.themeModeTitles[i],
                style: Theme.of(context).textTheme.overline?.copyWith(
                      color: Theme.of(context).accentColor,
                      letterSpacing: 0.15,
                      height: 1.5,
                    ),
              ),
              leading: Theme(
                data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Theme.of(context).primaryColorDark,
                    disabledColor: Theme.of(context).canvasColor),
                child: Radio<ThemeType>(
                  value: ThemeType.values[i],
                  groupValue: themeProvider.getThemeType(),
                  onChanged: (value) {
                    print(value);

                    themeProvider.setThemeStyle(value!);
                  },
                  activeColor: Theme.of(context).highlightColor,
                ),
              ),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'ОТМЕНА',
            style: Theme.of(context).textTheme.button?.copyWith(
                  letterSpacing: 1.5,
                  height: 1.71,
                ),
          ),
        ),
      ],
    );
  }
}
