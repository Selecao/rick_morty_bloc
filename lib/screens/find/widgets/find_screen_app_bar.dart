import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class FindScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double _bottomAppBarHeight = 64.0;
  FindScreenAppBar()
      : preferredSize = Size.fromHeight(kToolbarHeight + _bottomAppBarHeight);

  final _textController = TextEditingController();

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    const underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: ColorTheme.blue_600,
      ),
    );

    return AppBar(
      elevation: 0.0,
      titleSpacing: 0.0,
      automaticallyImplyLeading: false,
      title: TextField(
        controller: _textController,
        focusNode: FocusNode(),
        style: AppTextTheme.bodyText1.copyWith(
          fontSize: 16.0,
          letterSpacing: 0.44,
          height: 1.5,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
          // change this if response
          filled: true,
          fillColor: ColorTheme.blue_600,
          hintText: "Поиск",
          hintStyle: AppTextTheme.body1.copyWith(letterSpacing: 0.44),
          enabledBorder: underlineInputBorder,
          focusedBorder: underlineInputBorder,
          border: underlineInputBorder,
          prefixIcon: IconButton(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 20.0, 12.0),
            icon: SvgPicture.asset(
              AppIcons.arrowBack,
              color: ColorTheme.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          suffixIcon: IconButton(
            padding: EdgeInsets.fromLTRB(.0, 12.0, 12.0, 12.0),
            icon: SvgPicture.asset(
              AppIcons.delete,
              color: ColorTheme.white,
            ),
            onPressed: () {
              _textController.clear();
            },
          ),
        ),
        onSubmitted: (String value) {},
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(_bottomAppBarHeight),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'РЕЗУЛЬТАТЫ ПОИСКА',
                    style: AppTextTheme.subtitle2.copyWith(
                      letterSpacing: 1.5,
                      height: 1.6,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 23.0),
          ],
        ),
      ),
    );
  }
}
