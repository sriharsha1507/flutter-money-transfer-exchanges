import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  static const remitlyEndPoint = "/remitly";
  static const xoomEndPoint = "/xoom";
  static const apiUrl = "http://10.0.2.2:5000";

  Future<dynamic> fetchData(String endPoint) async {
    final url = apiUrl + endPoint;
    final data = await http.get(url);
    return json.decode(data.body);
  }
}
