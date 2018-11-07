import 'dart:async';

import 'package:flutter/material.dart';
import 'package:money_transfer_exchanges/service/api.dart';

class ExchangeWidget extends StatelessWidget {
  final Api api;
  String endPoint;

  ExchangeWidget(this.api, this.endPoint);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
        future: fetchSampleApi(this.endPoint),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data);
            return Text(snapshot.data);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // By default, show a loading spinner
          return CircularProgressIndicator();
        });
  }

  Future<dynamic> fetchSampleApi(String endPoint) async {
    final response = await api.fetchData(endPoint);
    return response['amount'];
  }
}
