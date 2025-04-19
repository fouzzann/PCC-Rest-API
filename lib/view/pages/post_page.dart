import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/controller/post_controller.dart';
import 'package:rest_api/controller/theme_controller.dart';
import 'package:rest_api/core/constant/app_constant.dart';
import 'package:rest_api/view/widgets/error_widget.dart';
import 'package:rest_api/view/widgets/loading_widgets.dart';
import 'package:rest_api/view/widgets/post_list.dart';


class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);

  final PostsController _postsController = Get.put(PostsController());
  final ThemeController _themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
        actions: [
          IconButton(
            icon: Obx(() => Icon(
              _themeController.isDarkMode.value ? Icons.light_mode : Icons.dark_mode,
            )),
            onPressed: () => _themeController.toggleTheme(),
          ),
        ],
      ),
      body: Obx(() {
        if (_postsController.isLoading.value) {
          return const LoadingWidget();
        } else if (_postsController.hasError.value) {
          return CustomErrorWidget(
            errorMessage: _postsController.errorMessage.value,
            onRetry: _postsController.retryFetch,
          );
        } else {
          return PostListWidget(posts: _postsController.posts);
        }
      }),
    );
  }
}