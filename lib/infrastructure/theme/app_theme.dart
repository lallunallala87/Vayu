import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static TextTheme get textTheme => TextTheme(
    bodyLarge: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal),
    headlineLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal),
    headlineSmall: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
  );
}
