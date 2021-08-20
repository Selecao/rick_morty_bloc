import 'package:flutter/material.dart';
import 'package:sc_03/components/app_divider.dart';

import 'package:sc_03/components/filter_app_bar.dart';
import 'package:sc_03/screens/locations_filter/widgets/selection_tile.dart';
import 'package:sc_03/theme/app_color.dart';

class SelectionScreen extends StatelessWidget {
  final String title;
  final String activeSelection;
  final List<String> selectionList;
  final VoidCallback onTapToDefault;
  final Function(String) onTapToNew;

  SelectionScreen({
    required this.title,
    this.activeSelection = "",
    required this.selectionList,
    required this.onTapToDefault,
    required this.onTapToNew,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterAppBar(
        title: title,
        isFilterEnable: false,
        onTap: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 36.0),
              InkWell(
                onTap: onTapToDefault,
                child: Text(
                  "Не выбрано",
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: activeSelection == ""
                            ? AppColor.cyan_300
                            : Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.15,
                        height: 1.5,
                      ),
                ),
              ),
              const SizedBox(height: 24.0),
              AppDivider(),
              ListView.builder(
                itemBuilder: (context, index) => SelectionTile(
                  text: selectionList[index],
                  isSelected: selectionList[index] == activeSelection,
                  onTap: () {
                    onTapToNew(selectionList[index]);
                  },
                ),
                itemCount: selectionList.length,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
