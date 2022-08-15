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
        appBar: AppBar(
          title: Text("curso"),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/imgs/space.jpg", fit: BoxFit.cover),
              ),
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black.withOpacity(0.60) //Máscara
                  ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    FlutterLogo(size:150)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
