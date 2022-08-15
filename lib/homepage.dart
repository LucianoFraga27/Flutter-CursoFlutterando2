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

  final controller = TextEditingController();

  final lista = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("curso"),),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/imgs/space.jpg",
              fit: BoxFit.cover),
              Container(
                height:100,
                width: 100,
                color: Colors.red
              ),
              Container(
                  height:80,
                  width: 80,
                  color: Colors.green
              ),
              Container(
                  height:60,
                  width: 60,
                  color: Colors.yellow
              ),
              Container(
                  height:40,
                  width: 40,
                  color: Colors.lightBlue
              )
            ],
          ),
        )
        );
  }
}
