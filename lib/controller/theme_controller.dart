import 'package:get/get.dart';

class ThemeController extends GetxController {
  // Observable boolean for dark mode status
  RxBool isDarkMode = false.obs;

  // Toggle between light and dark theme
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }
}