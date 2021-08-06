import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_03/theme/app_color.dart';

class AppRadio extends StatelessWidget {
  final int index;
  final String icon;
  final int selected;
  final VoidCallback? onTap;
  const AppRadio(this.index, this.icon, {required this.selected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        width: 34.0,
        height: 34.0,
        color: (selected == index)
            ? Theme.of(context).highlightColor
            : AppColor.blueGrey_600,
      ),
    );
  }
}
