import 'package:flutter_app_test_api/APIManager/APIManager.dart';
import 'package:flutter_app_test_api/Models/Post.dart';

class PostService{
  static Future<Post> getPostService(){
    APIManager manager = new APIManager();
    var response = manager.GetASync("https://jsonplaceholder.typicode.com/posts/1",(json) => Post.fromJson(json));
  }
}