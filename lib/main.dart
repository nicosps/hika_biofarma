import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hika_biofarma/utils/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Hika Biofarma",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeList.lightTheme,
      darkTheme: ThemeList.lightTheme,
      themeMode: ThemeMode.system,
    );
  }
}
