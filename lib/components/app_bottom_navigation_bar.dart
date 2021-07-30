import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/app_text_theme.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final void Function(int index) onTap;
  final int currentIndex;
  AppBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final activeColor = Theme.of(context).hoverColor;
    final inactiveColor = Theme.of(context).primaryColorDark;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      elevation: 4.0,
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      selectedItemColor: activeColor,
      unselectedItemColor: inactiveColor,
      selectedLabelStyle: Theme.of(context).textTheme.caption?.copyWith(
            letterSpacing: 0.5,
            height: 1.3,
          ),
      unselectedLabelStyle: Theme.of(context).textTheme.caption?.copyWith(
            letterSpacing: 0.5,
            height: 1.3,
          ),
      selectedIconTheme: IconThemeData(
        color: activeColor,
        size: 24.0,
      ),
      unselectedIconTheme: IconThemeData(
        color: inactiveColor,
        size: 24.0,
      ),
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          label: 'Персонажи',
          icon: SvgPicture.asset(
            AppIcons.tabCharacters,
            color: getColorForIndex(0, context),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Локации',
          icon: SvgPicture.asset(
            AppIcons.tabLocations,
            color: getColorForIndex(1, context),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Эпизоды',
          icon: SvgPicture.asset(
            AppIcons.tabEpisodes,
            color: getColorForIndex(2, context),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Настройки',
          icon: SvgPicture.asset(
            AppIcons.tabAdjustments,
            color: getColorForIndex(3, context),
          ),
        ),
      ],
    );
  }

  Color getColorForIndex(int barIndex, BuildContext context) {
    final activeColor = Theme.of(context).hoverColor;
    final inactiveColor = Theme.of(context).primaryColorDark;

    return currentIndex == barIndex ? activeColor : inactiveColor;
  }
}
