import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData.dark(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){print("clicou");},
          child: Icon(
              Icons.add_a_photo,
          )
        ),
        body: Center(
            child: Text(
              "Curso 03 Flutter",
            )
        )
    );
  }
}
