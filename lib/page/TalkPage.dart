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
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
          ChatOverviewTile(),
        ],
      ),
    );
  }

}
