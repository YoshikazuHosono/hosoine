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
      backgroundColor: Colors.cyan,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(onPressed: () => {}, icon: const Icon(Icons.add)),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.camera_alt)),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.photo)),
            const Expanded(
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Aa"),
                )
            ),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.mic)),
          ],
        ),
      ),
    );
  }
}
