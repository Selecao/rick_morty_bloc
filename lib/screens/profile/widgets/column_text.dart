import 'package:flutter/material.dart';

import 'package:sc_03/theme/app_text_theme.dart';

class ColumnText extends StatelessWidget {
  final String title;
  final String description;

  const ColumnText(
    this.title,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextTheme.caption.copyWith(
            height: 1.3,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          description,
          style: AppTextTheme.bodyText1.copyWith(
            letterSpacing: 0.25,
            height: 1.42,
          ),
        ),
      ],
    );
  }
}
