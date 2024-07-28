import 'package:flutter/material.dart';

  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.green,
  ];


class Themes {
  final int selectedColor;

  Themes({
    this.selectedColor = 0
    }):assert(selectedColor >= 0, 'Number must be greater then 0' ),
      assert(selectedColor < colors.length, 'Number must be less or equal than ${colors.length-1}' );

  ThemeData getTheme(){
    return ThemeData(
      colorSchemeSeed: colors[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ),
    );
  }
}
