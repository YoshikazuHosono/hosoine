import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyAnimationController extends HookWidget {
  const MyAnimationController({Key? key, required this.duration}) : super(key: key);

  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(duration: duration)..repeat();

    // FIXME reverse: trueを指定すると、reverseどころかrepeatもしねぇ。
    // final _controller = useAnimationController(duration: duration)..repeat(reverse: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Center(
        child: Opacity(
          opacity: useAnimation(_controller),
          child: const Icon(Icons.camera, size: 300),
        ),
      ),
    );
  }
}
