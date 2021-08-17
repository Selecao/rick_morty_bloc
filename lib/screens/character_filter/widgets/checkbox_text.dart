import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/app_color.dart';

class CheckboxText extends StatelessWidget {
  final bool isEnable;
  final String text;
  final VoidCallback onTap;

  const CheckboxText(this.isEnable, this.text, {required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: isEnable ? .0 : 2.0),
          InkResponse(
            onTap: onTap,
            child: SvgPicture.asset(
              isEnable ? AppIcons.checkboxDone : AppIcons.checkboxEmpty,
              width: isEnable ? 24.0 : 20.0,
              height: isEnable ? 24.0 : 20.0,
              color: isEnable
                  ? Theme.of(context).highlightColor
                  : AppColor.blueGrey_600,
            ),
          ),
          SizedBox(width: isEnable ? 20.0 : 22.0),
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                  height: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}
