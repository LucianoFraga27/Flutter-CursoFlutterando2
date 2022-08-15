import 'package:curso_02_flutterando/home_controller.dart';
import 'package:flutter/material.dart';
/*
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var controller = HomeController.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              controller.increment();
            },
            child: Icon(
              Icons.add_a_photo,
            )
        ),
        body: Center(
            child: Text(
              "Contador ${controller.value}",
            )
        )
    );
  }
}
*/

/**********************************************************************/

// StateFul Widget

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState((){
                counter++;
              });
            },
            child: Icon(
              Icons.add_a_photo,
            )),
        body: Center(
            child: Text(
          "Contador ${counter}",
        )));
  }
}
