import 'package:flutter/material.dart';

import 'package:sc_03/components/app_radio.dart';
import 'package:sc_03/resources/icons.dart';

class CustomRadioButton extends StatelessWidget {
  final int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppRadio(
          0,
          AppIcons.filterSortUp,
          selected: _selected,
          onTap: () {},
        ),
        const SizedBox(width: 24.0),
        AppRadio(
          1,
          AppIcons.filterSortDown,
          selected: _selected,
          onTap: () {},
        ),
      ],
    );
  }
}
