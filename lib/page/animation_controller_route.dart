import 'package:flutter/material.dart';

class MyAnimationController extends StatefulWidget {
  final Duration duration;

  const MyAnimationController({Key? key, required this.duration}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAnimationControllerState();
  }
}

class _MyAnimationControllerState extends State<MyAnimationController> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Center(
        child: Opacity(
          opacity: _controller.value,
          child: const Icon(Icons.camera, size: 300),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
