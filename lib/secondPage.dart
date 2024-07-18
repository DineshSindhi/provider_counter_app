import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("Count"),),
        body: Center(),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
            onPressed: (){
                  Provider.of<CountProvider>(context,listen: false).inCount();
                },
            child: Icon(Icons.add),
                ),
            FloatingActionButton(
              onPressed: (){
                Provider.of<CountProvider>(context,listen: false).minusCount();
              },
              child: Icon(Icons.minimize),
            ),
          ],
        ),
    );
  }
}
