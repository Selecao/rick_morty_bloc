import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final double indent;
  final double endIndent;
  const AppDivider({this.indent = .0, this.endIndent = .0});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).canvasColor,
      thickness: 2.0,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
