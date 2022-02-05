import 'package:flutter/material.dart';
import 'package:hosoine/widget/chat_overview.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("トーク"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
          ChatOverviewTile(Icons.pin_drop, "チャットルーム名", "最近のメッセージ"),
        ],
      ),
    );
  }

}
