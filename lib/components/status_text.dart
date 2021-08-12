import 'package:flutter/material.dart';

class StatusText extends StatelessWidget {
  const StatusText({
    required this.statusIndex,
  });

  final int statusIndex;

  @override
  Widget build(BuildContext context) {
    return Text(
      getStatusText(statusIndex),
      style: Theme.of(context).textTheme.subtitle2?.copyWith(
            height: 1.6,
            letterSpacing: 1.5,
            color: getStatusColor(statusIndex, context),
          ),
    );
  }
}

String getStatusText(int statusIndex) {
  switch (statusIndex) {
    case 0:
      return "ЖИВОЙ";
    case 1:
      return "МЕРТВЫЙ";
    default:
      return "НЕИЗВЕСТНО";
  }
}

Color getStatusColor(int statusIndex, BuildContext context) {
  switch (statusIndex) {
    case 0:
      return Theme.of(context).hintColor;
    case 1:
      return Theme.of(context).errorColor;
    default:
      return Theme.of(context).indicatorColor;
  }
}
