import 'package:flutter/material.dart';
import 'package:sc_03/components/app_circle_button.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/app_color.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  TransparentAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: .0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: AppCircleButton(
          icon: AppIcons.arrowBack,
          color: AppColor.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      leadingWidth: 64.0,
      toolbarHeight: 48.0,
    );
  }
}
