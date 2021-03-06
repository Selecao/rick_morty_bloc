import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';

class ThemeSelectorWidget extends StatelessWidget {
  final String darkModeOptionTitle;
  final VoidCallback onTap;
  const ThemeSelectorWidget({
    required this.darkModeOptionTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(.0, 24.0, 10.0, 36.0),
          child: Row(
            children: [
              SvgPicture.asset(
                AppIcons.themePalette,
                width: 27.0,
                color: Theme.of(context).accentColor,
              ),
              const SizedBox(width: 21),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Темная тема',
                    style: Theme.of(context).textTheme.overline?.copyWith(
                          letterSpacing: 0.15,
                          height: 1.5,
                        ),
                  ),
                  Text(
                    darkModeOptionTitle,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context)
                              .primaryColorLight
                              .withOpacity(0.6),
                          letterSpacing: 0.25,
                          height: 1.42,
                        ),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                AppIcons.arrowForwardIos,
                height: 8.0,
                color: Theme.of(context).accentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
