import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_03/components/app_circle_button.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/app_color.dart';

class FilterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isFilterEnable;
  final VoidCallback onTap;
  FilterAppBar({
    required this.title,
    required this.isFilterEnable,
    required this.onTap,
  }) : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    const double actionsPadding = 12.0;

    return AppBar(
      elevation: 0.0,
      titleSpacing: 0.0,
      automaticallyImplyLeading: false,
      toolbarHeight: kToolbarHeight + actionsPadding,
      backgroundColor: Theme.of(context).canvasColor,
      leading: AppCircleButton(
        icon: AppIcons.arrowBack,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              letterSpacing: 0.15,
              height: 1.4,
            ),
      ),
      actions: <Widget>[
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(actionsPadding),
            child: SvgPicture.asset(
              AppIcons.filterDisable,
              width: 36.0,
              height: 36.0,
              color: isFilterEnable ? AppColor.red_100 : AppColor.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
