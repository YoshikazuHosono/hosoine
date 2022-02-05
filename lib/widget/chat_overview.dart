import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hosoine/page/chat_route.dart';

class ChatOverviewTile extends StatelessWidget {
  final IconData _icon;
  final String _chatroomName;
  final String _recentMsg;

  const ChatOverviewTile(this._icon, this._chatroomName, this._recentMsg, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(_icon),
            backgroundColor: Colors.pink,
          ),
          title: Text(_chatroomName),
          subtitle: Text(_recentMsg),
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(
                builder: (ctx) => Chat(_chatroomName)
            ))
          },
        ),
      ),
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
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
        children: [
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
