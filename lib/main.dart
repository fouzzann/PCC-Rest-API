import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/controller/theme_controller.dart';
import 'package:rest_api/core/constant/app_constant.dart';
import 'package:rest_api/core/theme/app_theme.dart';
import 'package:rest_api/view/pages/post_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ThemeController _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
      title: AppConstants.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: PostsPage(),
    ));
  }
}