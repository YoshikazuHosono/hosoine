import 'package:flutter/material.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "TalkPage",
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}