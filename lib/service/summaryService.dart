import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchSummaryReport() async{
  var projectArrayBlock = [];
  var result = await http.get(Uri.parse('http://124.107.121.239:8090/summary-report/fatracker/selectFaTracker'));
  if(result.statusCode == 200){

    return jsonDecode(result.body);
  }else{
    throw Exception('Failed to load album');
  }
}
