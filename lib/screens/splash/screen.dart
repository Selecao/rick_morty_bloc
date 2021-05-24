import 'package:flutter/material.dart';

import 'package:sc_03/resources/images.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.background1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
