import 'package:flutter/material.dart';
import 'package:sc_03/theme/app_text_theme.dart';

class ChaptersHeader extends StatelessWidget {
  const ChaptersHeader();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Эпизоды',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    height: 1.4,
                    letterSpacing: 0.15,
                  ),
            ),
            Text(
              'Все эпизоды',
              style: Theme.of(context).textTheme.caption?.copyWith(
                    height: 1.3,
                    letterSpacing: 0.5,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
