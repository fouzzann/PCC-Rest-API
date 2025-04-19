import 'dart:convert';
import 'dart:io';
import 'dart:async'; // Import this for TimeoutException
import 'package:http/http.dart' as http;
import 'package:rest_api/core/constant/app_constant.dart';
import 'package:rest_api/model/post_model.dart';

class ApiService {
  // Fetch posts from the API with better error and network handling
  Future<List<Post>> fetchPosts() async {
    try {
      // Set timeout to avoid infinite loading
      final response = await http
          .get(Uri.parse(AppConstants.apiEndpoint))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        final List<Post> posts = jsonData.map((data) => Post.fromJson(data)).toList();
        return posts.take(10).toList();
      } else {
        throw HttpException('Failed to load posts. Status code: ${response.statusCode}');
      }  
    } on SocketException {
      throw Exception('No Internet connection. Please check your network.');
    } on HttpException catch (e) {
      throw Exception('Server error: $e');
    } on FormatException {
      throw Exception('Invalid data format received from the server.');
    } on TimeoutException {
      throw Exception('The connection has timed out. Please try again later.');
    } catch (e) {
      throw Exception('Unexpected error occurred: $e');
    }
  }
}
