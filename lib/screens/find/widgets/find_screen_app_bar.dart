import 'package:flutter/material.dart';

import 'package:sc_03/screens/find/widgets/finder_text_field.dart';

class FindScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double _bottomAppBarHeight = 64.0;
  final void Function(String)? onSubmitted;

  FindScreenAppBar({required this.onSubmitted})
      : preferredSize = Size.fromHeight(kToolbarHeight + _bottomAppBarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      titleSpacing: 0.0,
      automaticallyImplyLeading: false,
      title: FinderTextField(onSubmitted: onSubmitted),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(FindScreenAppBar._bottomAppBarHeight),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'РЕЗУЛЬТАТЫ ПОИСКА',
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
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
