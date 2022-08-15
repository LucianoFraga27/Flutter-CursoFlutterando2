

import 'package:curso_02_flutterando/home_controller.dart';
import 'package:curso_02_flutterando/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: Home(),
      ),
      theme: ThemeData.dark(),
    );
  }
}