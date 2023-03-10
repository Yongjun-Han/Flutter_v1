import 'package:flutter/material.dart';
import 'package:toon/widget/button.dart';
import 'package:toon/widget/card.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  var nico = Player(
    name: 'nico',
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Yongjun',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Blance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$5,193,234',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      innerText: 'Transfer',
                      bgColor: Colors.teal,
                      textColor: Colors.black,
                    ),
                    Button(
                      innerText: 'Request',
                      bgColor: Color(0xff1f2123),
                      textColor: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const myCard(
                  name: "Euro",
                  code: 'EUR',
                  amount: '6,435',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  offset: 0,
                ),
                const myCard(
                  name: "Bitcoin",
                  code: 'BTC',
                  amount: '21,435',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  offset: -20,
                ),
                const myCard(
                  name: "Dollar",
                  code: 'USD',
                  amount: '561,435',
                  icon: Icons.attach_money,
                  isInverted: false,
                  offset: -40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
