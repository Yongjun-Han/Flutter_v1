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
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Hey, Yongjun',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),),
                      Text('Welcome Back', 
                        style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text('Total Blance',
                style: TextStyle(
                  color: Colors.white.withOpacity(.8),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10,),
              Text('\$5 193 234',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                      child: Text('transfer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
    );   
  }


}

