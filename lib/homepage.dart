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
  final nomes = ['Luciano','Ketlen','Ana','Arthur','Cris','Lucas','Jorge','Daniel','Marcia','Amanda'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("curso"),),
        body: Center(
          child: ListView.builder(
              itemCount: nomes.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  color: Colors.yellowAccent,
                  child: ListTile(
                    title: Text(nomes[index])
                  ),
                );
              }
            ),
          )
        );
  }
}
