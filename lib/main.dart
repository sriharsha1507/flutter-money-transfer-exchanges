import 'dart:async';

import 'package:flutter/material.dart';
import 'package:money_transfer_exchanges/service/api.dart';
import 'package:money_transfer_exchanges/widgets/exchange_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(" Money exchange rates"),
          ),
          body: Column(
            children: <Widget>[
              Text(
                "title",
                textDirection: TextDirection.ltr,
              ),
              Text("Amount per 1 dollar"),
              RaisedButton(
                padding: const EdgeInsets.all(8.0),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: addNumbers,
                child: new Text("Add"),
              ),
              ExchangeWidget(Api(), Api.remitlyEndPoint)
            ],
          )),
    );
  }

  Future addNumbers() async {
    Api api = Api();
    var data = await api.fetchData(Api.xoomEndPoint);
    print(data['amount']);
  }
}
