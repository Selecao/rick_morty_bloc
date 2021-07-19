import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';

import 'package:sc_03/screens/adjustments/bloc/adjustments_bloc.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';
import 'package:sc_03/resources/variables.dart';

class ThemeAlertDialog extends StatelessWidget {
  ThemeAlertDialog();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdjustmentsBloc, AdjustmentsState>(
        builder: (context, state) {
      return state.maybeMap(
        loading: (_) => Center(child: AppCircularProgressIndicator()),
        data: (_data) => AlertDialog(
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < themeModeTitles.length; i++)
                ListTile(
                  contentPadding:
                      const EdgeInsets.only(left: 10.0, right: 44.0),
                  horizontalTitleGap: 8.0,
                  title: Text(
                    themeModeTitles[i],
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
                    child: Radio<int>(
                      value: i,
                      groupValue: _data.darkModeOptionIndex,
                      onChanged: (value) {
                        print(value);

                        /// Для создания события используется контекст с обращением к блоку в контексте

                        context.read<AdjustmentsBloc>()
                          ..add(
                            AdjustmentsEvent.selectedTheme(
                                darkModeOptionIndex: value!),
                          );
                      },
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
        ),
        orElse: () => Container(),
      );
    });
  }
}
