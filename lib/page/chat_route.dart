import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final String _chatroomName;

  const Chat(this._chatroomName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_chatroomName),
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: const Icon(Icons.call),
                onPressed: () => {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: const Icon(Icons.dehaze),
                onPressed: () => {},
              ),
            ),
          ],
        ),
        body: const Center(child: Text("チャット")),
        backgroundColor: Colors.cyan);
  }
}
