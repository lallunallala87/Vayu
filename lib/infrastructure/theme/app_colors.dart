import 'package:flutter/material.dart';

class AppColors {
  static ColorScheme get lightScheme => ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
  );

  static ColorScheme get darkScheme => ColorScheme.fromSeed(
    seedColor: Colors.yellow,
    brightness: Brightness.dark,
  );
}
