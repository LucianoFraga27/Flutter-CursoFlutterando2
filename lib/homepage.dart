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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(child: TextField(controller: controller,)),
                  IconButton(onPressed: (){
                    final texto = controller.text;
                    setState(
                        () {
                          lista.add(texto);
                        }
                    );
                    controller.clear();
                  }, icon: const Icon(Icons.add))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (context, index){
                    final item = lista[index];
                    return ListTile(
                      title: Text(item),
                    );
                  }
              ),
            )
          ],
        )
        );
  }
}
