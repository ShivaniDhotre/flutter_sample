import 'dart:convert';

import 'package:my_first_app/single_post_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {

  //with Model

  Future<SinglePostWithModel?> getSinglePostWithModel()async{

    try{

      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");

      var response = await http.get(url);

      if(response.statusCode == 200 ){
        SinglePostWithModel model = SinglePostWithModel.fromJson(json.decode(response.body));

        return model;
      }

    }catch(e){
      print(e.toString());
    }
    return null;

  }
  





  Future<dynamic> getSinglePostWithouthModel()async{

    try{

      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");

      var response = await http.get(url);

      if(response.statusCode == 200 ){
        final body = response.body;

        final data =jsonDecode(body);

        return data;
      }

    }catch(e){
      print(e.toString());
    }
    return null;

  }
  
}