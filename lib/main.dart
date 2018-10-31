import 'package:flutter/material.dart';

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
              Text("title", textDirection: TextDirection.ltr,),
              Text("Amount per 1 dollar")
            ],
          )
      ),
    );
  }
}