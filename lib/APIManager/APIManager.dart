import 'dart:convert';

import 'package:http/http.dart' as http;

class APIManager{
  // get
  Future GetASync(String url, Function convert)async {
   try{
     var response = await http.get(url);
     if(response.statusCode == 200){
       var decodedJson = json.decode(response.body);
       var obj = convert(decodedJson);
       return obj;}
    }
    catch(ex,st){
     print(ex);
    }
  }
  // post
  // delete
  // put
}