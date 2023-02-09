import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'NearPays',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: FlexThemeData.light(scheme: FlexScheme.bigStone,),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      
    ),
  );
}
