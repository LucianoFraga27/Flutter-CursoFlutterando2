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
        appBar: AppBar(title: Text("curso"),),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for(int i = 0; i < 20; i++)
                  Container(
                    height: 80,
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    color: Colors.green,
                  ),
              ],
            ),
          )
        )
    );
  }
}
