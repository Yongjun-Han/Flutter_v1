import 'package:flutter/material.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  var nico = Player(name: 'nico',);
  runApp(App());
}

class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          backgroundColor: Colors.amber,
          title: Text('HELLO WORLD!'),
        ),
        body: Center(child: Text('hello Flutter!'),),
      ),
    );   
  }


}

