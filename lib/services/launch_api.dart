import 'dart:convert';

import 'package:http/http.dart' as http;

import '../classes/Launch.dart';

Future<List<Launch>> getLaunchFromApi()async{
  //final url="https://api.spacexdata.com/v4/launches";
  final url=Uri.parse("https://api.spacexdata.com/v4/launches");
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if(response.body.isNotEmpty){
    if (response.statusCode == 200) {
      var json = response.body;
      return launchFromJson(json);

    } else {
      print('Request failed with status: ${response.statusCode}.');
      return [];
    }
  }
  else{
    print('No data found');return [];
  }


}

List list=[];
Future getData()async {
  final url = Uri.parse("https://api.spacexdata.com/v4/launches");
  var response = await http.get(url);
  return launchToJson;
}