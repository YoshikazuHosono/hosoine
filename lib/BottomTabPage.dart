import 'package:flutter/material.dart';
import 'package:hosoine/HomePage.dart';
import 'package:hosoine/NewsPage.dart';
import 'package:hosoine/TalkPage.dart';
import 'package:hosoine/VoomPage.dart';
import 'package:hosoine/WalletPage.dart';

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
      appBar: AppBar(
        title: const Text("なび"),
      ),
      body: _pages.elementAt(_idx),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("ホーム")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("トーク")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("VOOM")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("ニュース")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("ウォレット")),
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