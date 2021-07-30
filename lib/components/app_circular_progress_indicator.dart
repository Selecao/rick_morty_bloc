import 'package:flutter/material.dart';
import 'package:sc_03/theme/app_color.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final double? value;
  const AppCircularProgressIndicator({
    Key? key,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(AppColor.green_200),
      backgroundColor: AppColor.blue_900,
      value: value,
    );
  }
}
