import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatOverviewTile extends StatelessWidget{
  const ChatOverviewTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.chat),
            backgroundColor: Colors.pink,
          ),
          title: Text("タイトル"),
          subtitle: Text("サブタイトル"),
        ),
      ),
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        children:  [
          SlidableAction(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            icon: Icons.pin,
            onPressed: (ctx) => {},
          ),
          SlidableAction(
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.white,
            icon: Icons.pin_drop,
            onPressed: (ctx) => {},
          )
        ],
      ),
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children:  [
          SlidableAction(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            label: "非表示",
            onPressed: (ctx) => {},
          ),
          SlidableAction(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: "削除",
            onPressed: (ctx) => {},
          )
        ],
      ),
    );
  }
}