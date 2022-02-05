import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _add() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('count:$_counter')],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: _add,
              tooltip: 'Add',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _reset,
              tooltip: 'Reset',
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
