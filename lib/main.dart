import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:sample_app/infrastructure/theme/app_colors.dart';
import 'package:sample_app/infrastructure/theme/app_theme.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;

  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            colorScheme: AppColors.lightScheme,
            textTheme: AppTheme.textTheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: AppColors.darkScheme,
            textTheme: AppTheme.textTheme,
            useMaterial3: true,
          ),
          themeMode: ThemeMode.system,
          initialRoute: initialRoute,
          getPages: Nav.routes,
        );
      },
    );
  }
}
