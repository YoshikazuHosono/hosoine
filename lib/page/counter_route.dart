import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Counter extends HookWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var count = useState(0);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        // Consumer is a widget that allows you reading providers.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('count:' + count.value.toString())],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => count.value++,
            tooltip: 'Add',
            child: const Icon(Icons.add),
            heroTag: "hero1", // TODO いや結局これ何よ
          ),
          FloatingActionButton(
            onPressed: () => count.value = 0,
            tooltip: 'Reset',
            child: const Icon(Icons.remove),
            heroTag: "hero2",
          ),
        ],
      ),
    );
  }
}
