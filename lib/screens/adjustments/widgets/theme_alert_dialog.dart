import 'package:flutter/material.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class ThemeAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorTheme.blue_600,
      title: Text(
        'Темная тема',
        style: AppTextTheme.headline6.copyWith(
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
          for (int i = 1; i <= themeModeTitles.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.only(left: 10.0, right: 44.0),
              horizontalTitleGap: 8.0,
              title: Text(
                themeModeTitles[i - 1],
                style: AppTextTheme.body1.copyWith(
                  color: ColorTheme.white,
                  letterSpacing: 0.15,
                  height: 1.5,
                ),
              ),
              leading: Theme(
                data: Theme.of(context).copyWith(
                    unselectedWidgetColor: ColorTheme.blueGrey_600,
                    disabledColor: ColorTheme.blue_600),
                child: Radio(
                  value: i,
                  groupValue: 2,
                  onChanged: (_) {},
                  activeColor: ColorTheme.cyan_300,
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
            style: AppTextTheme.button.copyWith(
              letterSpacing: 1.5,
              height: 1.71,
            ),
          ),
        ),
      ],
    );
  }
}
