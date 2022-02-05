import 'package:flutter/material.dart';
import 'package:hosoine/page/counter_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.all(80),
          child: Column(
            children: [
              OutlinedButton(
                child: const Text('CounterSample'),
                onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Counter()))},
              )
            ],
          )),
    );
  }
}
