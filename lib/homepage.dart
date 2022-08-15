
import 'package:flutter/material.dart';

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