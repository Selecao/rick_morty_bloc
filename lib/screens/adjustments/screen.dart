import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/components/app_divider.dart';
import 'package:sc_03/global_bloc/global_bloc.dart';
import 'package:sc_03/screens/adjustments/bloc/adjustments_bloc.dart';
import 'package:sc_03/screens/adjustments/widgets/about_app.dart';
import 'package:sc_03/screens/adjustments/widgets/theme_alert_dialog.dart';
import 'package:sc_03/screens/adjustments/widgets/theme_selector_widget.dart';
import 'package:sc_03/theme/text_theme.dart';

class AdjustmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdjustmentsBloc, AdjustmentsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(child: AppCircularProgressIndicator()),
          data: (_data) => Scaffold(
            appBar: AppBar(
              elevation: .0,
              title: Text(
                'Настройки',
                style: AppTextTheme.headline6.copyWith(
                  letterSpacing: 0.15,
                  height: 1.4,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 36.0),
                    Text(
                      'ВНЕШНИЙ ВИД',
                      style: AppTextTheme.subtitle2.copyWith(
                        height: 1.6,
                        letterSpacing: 1.5,
                      ),
                    ),
                    ThemeSelectorWidget(
                      darkModeOptionTitle:
                          _data.themeModeTitles[_data.darkModeOptionIndex],
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
              ),
            ),
            bottomNavigationBar: AppBottomNavigationBar(
              currentIndex: 3,
              onTap: (int index) {
                context.read<GlobalBloc>()
                  ..add(
                    GlobalEvent.selectedTab(index: index),
                  );
              },
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
