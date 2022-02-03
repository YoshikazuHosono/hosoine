import 'package:flutter/material.dart';

class VoomPage extends StatelessWidget {
  const VoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "VoomPage",
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}