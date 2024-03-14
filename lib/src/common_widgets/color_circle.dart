import 'dart:math';

import 'package:applimode_app/src/constants/color_palettes.dart';
import 'package:applimode_app/custom_settings.dart';
import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  const ColorCircle({super.key, this.size, this.index});

  final double? size;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? profileSizeMedium,
      height: size ?? profileSizeMedium,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index != null
            ? pastelColorPalettes[index! % 24]
            : pastelColorPalettes[Random().nextInt(25)],
      ),
    );
  }
}
