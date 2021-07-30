import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/app_color.dart';
import 'package:sc_03/theme/app_text_theme.dart';

class SearchTextField extends StatelessWidget {
  final String title;
  final Widget? suffixIcon;
  final void Function(String value)? onSubmitted;

  SearchTextField({
    required this.title,
    this.suffixIcon,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      style: AppTextTheme.subtitle1.copyWith(letterSpacing: 0.5),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        filled: true,
        fillColor: AppColor.blue_600,
        hintText: title,
        hintStyle: AppTextTheme.body1.copyWith(letterSpacing: 0.44),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 12.0, 10.0, 12.0),
          child: SvgPicture.asset(
            AppIcons.search,
            color: AppColor.blueGrey_600,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
      onSubmitted: onSubmitted,
    );
  }
}
