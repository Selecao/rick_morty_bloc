import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/app_color.dart';
import 'package:sc_03/theme/app_text_theme.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final void Function(int index) onTap;
  final int currentIndex;
  AppBottomNavigationBar({required this.currentIndex, required this.onTap});
  static const _activeColor = AppColor.green_200;
  static const _inactiveColor = AppColor.blueGrey_600;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      elevation: .0,
      backgroundColor: AppColor.blue_600,
      selectedItemColor: _activeColor,
      unselectedItemColor: _inactiveColor,
      selectedLabelStyle: AppTextTheme.caption.copyWith(
        letterSpacing: 0.5,
        height: 1.3,
      ),
      unselectedLabelStyle: AppTextTheme.caption.copyWith(
        letterSpacing: 0.5,
        height: 1.3,
      ),
      selectedIconTheme: IconThemeData(
        color: _activeColor,
        size: 24.0,
      ),
      unselectedIconTheme: IconThemeData(
        color: _inactiveColor,
        size: 24.0,
      ),
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          label: 'Персонажи',
          icon: SvgPicture.asset(
            AppIcons.tabCharacters,
            color: getColorForIndex(0),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Локации',
          icon: SvgPicture.asset(
            AppIcons.tabLocations,
            color: getColorForIndex(1),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Эпизоды',
          icon: SvgPicture.asset(
            AppIcons.tabEpisodes,
            color: getColorForIndex(2),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Настройки',
          icon: SvgPicture.asset(
            AppIcons.tabAdjustments,
            color: getColorForIndex(3),
          ),
        ),
      ],
    );
  }

  Color getColorForIndex(int barIndex) {
    return currentIndex == barIndex ? _activeColor : _inactiveColor;
  }
}
