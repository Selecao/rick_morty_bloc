import 'package:flutter/material.dart';
import 'package:sc_03/theme/app_color.dart';

class SelectionTile extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const SelectionTile({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: isSelected
                    ? AppColor.cyan_300
                    : Theme.of(context).accentColor,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
                height: 1.5,
              ),
        ),
      ),
    );
  }
}
