import 'package:flutter/material.dart';
import 'package:sc_03/theme/app_color.dart';
import 'package:sc_03/theme/app_text_theme.dart';

class StatusText extends StatelessWidget {
  const StatusText({
    required this.statusIndex,
  });

  final int statusIndex;

  @override
  Widget build(BuildContext context) {
    return Text(
      getStatusText(statusIndex),
      style: AppTextTheme.subtitle2.copyWith(
        height: 1.6,
        letterSpacing: 1.5,
        color: getStatusColor(statusIndex),
      ),
    );
  }
}

String getStatusText(int statusIndex) {
  switch (statusIndex) {
    case 0:
      return "ЖИВОЙ";
    case 1:
      return "МЕРТВЫЙ";
    default:
      return "НЕИЗВЕСТНО";
  }
}

Color getStatusColor(int statusIndex) {
  switch (statusIndex) {
    case 0:
      return AppColor.green_200;
    case 1:
      return AppColor.red_100;
    default:
      return AppColor.yellow_200;
  }
}
