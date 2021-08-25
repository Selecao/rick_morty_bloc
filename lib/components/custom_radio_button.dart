import 'package:flutter/material.dart';

import 'package:sc_03/components/app_radio.dart';
import 'package:sc_03/resources/icons.dart';

class CustomRadioButton extends StatelessWidget {
  final bool? isSortAscending;
  final VoidCallback onFirstRadioTap;
  final VoidCallback onSecondRadioTap;
  CustomRadioButton({
    required this.isSortAscending,
    required this.onFirstRadioTap,
    required this.onSecondRadioTap,
  });

  @override
  Widget build(BuildContext context) {
    int getSelected() {
      if (isSortAscending == null) return -1;

      return isSortAscending! ? 0 : 1;
    }

    return Row(
      children: [
        AppRadio(
          0,
          AppIcons.filterSortUp,
          selected: getSelected(),
          onTap: onFirstRadioTap,
        ),
        const SizedBox(width: 24.0),
        AppRadio(
          1,
          AppIcons.filterSortDown,
          selected: getSelected(),
          onTap: onSecondRadioTap,
        ),
      ],
    );
  }
}
