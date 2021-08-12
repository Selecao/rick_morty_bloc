import 'package:flutter/material.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final double? value;
  const AppCircularProgressIndicator({
    Key? key,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).hintColor),
      backgroundColor: Theme.of(context).primaryColor,
      value: value,
    );
  }
}
