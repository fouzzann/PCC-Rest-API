import 'package:get/get.dart';
import 'package:rest_api/data/api_service.dart';
import 'package:rest_api/model/post_model.dart';

class PostsController extends GetxController {
  final ApiService _apiService = ApiService();
  
  // Observable list of posts
  RxList<Post> posts = <Post>[].obs;
  
  // Observable loading state
  RxBool isLoading = false.obs;
  
  // Observable error state
  RxBool hasError = false.obs;
  RxString errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  // Fetch posts from the API
  Future<void> fetchPosts() async {
    try {
      isLoading.value = true;
      hasError.value = false;
      errorMessage.value = '';
      
      // Simulate network delay for demonstration purposes
      await Future.delayed(const Duration(seconds: 1));
      
      // Fetch posts from API
      final fetchedPosts = await _apiService.fetchPosts();
      posts.value = fetchedPosts;
    } catch (e) {
      hasError.value = true;
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  // Retry fetching posts
  void retryFetch() {
    fetchPosts();
  }
}