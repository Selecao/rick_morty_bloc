import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_03/resources/icons.dart';

class SearchTextField extends StatelessWidget {
  final String text;
  final String title;
  final Widget? suffixIcon;
  final void Function(String value)? onSubmitted;

  SearchTextField({
    this.text = '',
    required this.title,
    this.suffixIcon,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController()..text = this.text,
      focusNode: FocusNode(),
      style:
          Theme.of(context).textTheme.subtitle1?.copyWith(letterSpacing: 0.5),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        filled: true,
        fillColor: Theme.of(context).canvasColor,
        hintText: title,
        hintStyle:
            Theme.of(context).textTheme.overline?.copyWith(letterSpacing: 0.44),
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
            color: Theme.of(context).primaryColorDark,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
      onSubmitted: onSubmitted,
    );
  }
}
