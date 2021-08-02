import 'package:flutter/material.dart';
import 'constants.dart';
import 'background_icons.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgIcons(
          top: 545,
          left: -50,
          height: 200,
          width: 150,
          svgName: svgIcon6,
          degree: -40),
      SvgIcons(
          top: 680,
          left: 270,
          height: 150,
          width: 150,
          svgName: svgIcon5,
          degree: 20),
      SvgIcons(
          top: 180,
          left: 280,
          height: 140,
          width: 140,
          svgName: svgIcon3,
          degree: -80),
    ]);
  }
}
