import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<int> number = [];

  void onClicked() {
    setState(() {
      counter = counter + 1;
      number.add(number.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'click',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                '$counter',
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              for (var n in number) Text('${n + 1}'),
              IconButton(onPressed: onClicked, icon: const Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}
