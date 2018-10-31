import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> fetchRemitlyData() async {
    print("Attempting to fetch remitly data");

    final url = "http://10.0.2.2:5000/remitly";
    final data = await http.get(url);
    return json.decode(data.body);
  }
}
