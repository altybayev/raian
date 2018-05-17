import 'dart:math';
import 'package:flutter/material.dart';

class ColorPallete {
  static final ColorPallete primary = new ColorPallete(<Color>[
    Colors.blue[400],
    Colors.red[400],
    Colors.orange[400],
    Colors.green[400],
    Colors.yellow[400],
    Colors.purple[400],
    Colors.teal[400],
  ]);

  ColorPallete(List<Color> colors) : _colors = colors {
    assert(colors.isNotEmpty);
  }

  final List<Color> _colors;

  Color operator [](int index) => _colors[index % length];

  int get length => _colors.length;

  Color random(Random random) => this[random.nextInt(length)];
}