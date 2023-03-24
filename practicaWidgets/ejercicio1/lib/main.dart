import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Container y row"),
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 106.0,
                width: 100.0,
                color: Colors.redAccent,
              ),
              Container(
                height: 106.0,
                width: 120.0,
                color: Colors.teal.shade500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: 75.0,
                      color: Colors.green,
                    ),
                    Container(
                      height: 75.0,
                      width: 75.0,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              Container(
                height: 106.0,
                width: 100.0,
                color: Colors.blueAccent,
              ),
            ]),
      ),
    );
  }
}
