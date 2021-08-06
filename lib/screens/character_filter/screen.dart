import 'package:flutter/material.dart';
import 'package:sc_03/screens/character_filter/widgets/character_filter_body.dart';
import 'package:sc_03/screens/character_filter/widgets/filter_app_bar.dart';

class CharacterFilterScreen extends StatelessWidget {
  const CharacterFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterAppBar(),
      body: CharacterFilterBody(),
    );
  }
}
