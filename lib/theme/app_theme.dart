import 'package:flutter/material.dart';

const Color customColor = Color(0x000000ff);
const List<Color> colorThemes = [
  customColor,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.white
];

class AppTheme {
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: colorThemes[selectedColor]);
  }

  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor < colorThemes.length && selectedColor >= 0,
            'Los colores deben ser entre 0 y ${colorThemes.length}');
}
