import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

class Counter extends ConsumerWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterWatch = ref.watch(counterProvider.state);
    final counterRead = ref.read(counterProvider.state);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        // Consumer is a widget that allows you reading providers.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('count:' + counterWatch.state.toString())],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => counterRead.state++,
            tooltip: 'Add',
            child: const Icon(Icons.add),
            heroTag: "hero1", // TODO いや結局これ何よ
          ),
          FloatingActionButton(
            onPressed: () => counterRead.state = 0,
            tooltip: 'Reset',
            child: const Icon(Icons.remove),
            heroTag: "hero2",
          ),
        ],
      ),
    );
  }
}
