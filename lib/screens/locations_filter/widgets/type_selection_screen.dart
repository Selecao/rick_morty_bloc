import 'package:flutter/material.dart';

import 'package:sc_03/components/filter_app_bar.dart';

class TypeSelectionScreen extends StatefulWidget {
  @override
  _TypeSelectionScreenState createState() => _TypeSelectionScreenState();
}

class _TypeSelectionScreenState extends State<TypeSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterAppBar(false),
    );
  }
}
