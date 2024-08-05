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
  final bool isDarkMode;

  Themes({
    this.isDarkMode = false,
    this.selectedColor = 0
    }):assert(selectedColor >= 0, 'Number must be greater then 0' ),
      assert(selectedColor < colors.length, 'Number must be less or equal than ${colors.length-1}' );

  ThemeData getTheme(){
    return ThemeData(
      colorSchemeSeed: colors[selectedColor],
      brightness: isDarkMode? Brightness.dark : Brightness.light,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ),
    );
  }
}
