import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';

class CharactersCount extends StatefulWidget {
  final int charactersCount;
  final Function onSelected;

  CharactersCount({
    required this.charactersCount,
    required this.onSelected,
  });

  @override
  _CharactersCountState createState() => _CharactersCountState();
}

class _CharactersCountState extends State<CharactersCount> {
  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'ВСЕГО ПЕРСОНАЖЕЙ: ${widget.charactersCount}',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(letterSpacing: 1.5),
          ),
          IconButton(
            icon: SvgPicture.asset(
              isGridView ? AppIcons.viewList : AppIcons.viewGrid,
            ),
            onPressed: () {
              setState(() {
                isGridView = !isGridView;
                widget.onSelected(isGridView);
              });
            },
          ),
        ],
      ),
    );
  }
}
