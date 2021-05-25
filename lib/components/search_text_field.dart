import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      style: AppTextTheme.subtitle1.copyWith(letterSpacing: 0.5),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        filled: true,
        fillColor: ColorTheme.blue_600,
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
            color: ColorTheme.blueGrey_600,
          ),
        ),
        suffixIcon: Row(
          //this two lines makes icons and text stay at proper position
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 1.0,
              height: 24.0,
              color: ColorTheme.white.withOpacity(0.1),
            ),
            IconButton(
              padding: EdgeInsets.fromLTRB(10.0, 12.0, 12.0, 12.0),
              icon: SvgPicture.asset(
                AppIcons.filterSort,
                color: ColorTheme.blueGrey_600,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      onSubmitted: (submit) {},
    );
  }
}
