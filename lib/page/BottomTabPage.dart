import 'package:flutter/material.dart';
import 'package:hosoine/page/home_route.dart';
import 'package:hosoine/page/NewsPage.dart';
import 'package:hosoine/page/TalkPage.dart';
import 'package:hosoine/page/VoomPage.dart';
import 'package:hosoine/page/WalletPage.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BottomTabPageState();
  }
}

class _BottomTabPageState extends State<BottomTabPage> {
  int _idx = 0;
  final _pages = [const HomePage(), const TalkPage(), const VoomPage(), const NewsPage(), const WalletPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_idx),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ホーム"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "トーク"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "VOOM"),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: "ニュース"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_travel), label: "ウォレット"),
        ],
        currentIndex: _idx,
        fixedColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int idx) => setState(() => _idx = idx);
}
