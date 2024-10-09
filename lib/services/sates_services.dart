import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_first_app/model/world_states_model.dart';
import 'package:my_first_app/services/utilities/app_url.dart';

class SatesServices {
  Future<WorldStatesModel> fecthWorldSatesRecods () async{

    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));

    if(response.statusCode == 200){

      var data = jsonDecode(response.body);

      return WorldStatesModel.fromJson(data);

    }else{

      throw Exception('Error');

    }

  }


  Future<List<dynamic>> countriesListApi () async{

    var data ;

    final response = await http.get(Uri.parse(AppUrl.CountriesList));

    if(response.statusCode == 200){

       data = jsonDecode(response.body);

      return data;

    }else{

      throw Exception('Error');

    }

  }
 }