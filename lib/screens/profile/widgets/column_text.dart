import 'package:flutter/material.dart';

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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.caption?.copyWith(
                height: 1.3,
                letterSpacing: 0.5,
              ),
        ),
        const SizedBox(height: 4.0),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                letterSpacing: 0.25,
                height: 1.42,
              ),
        ),
      ],
    );
  }
}
