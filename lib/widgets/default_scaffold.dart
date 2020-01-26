import 'package:flutter/material.dart';
import 'package:youtube_clone/pages/home.dart';
import 'package:youtube_clone/pages/inbox.dart';
import 'package:youtube_clone/pages/library.dart';
import 'package:youtube_clone/pages/subscriptions.dart';
import 'package:youtube_clone/pages/trending.dart';
import 'package:youtube_clone/widgets/bottom_navigation_bar.dart';

class DefaultScaffold extends StatefulWidget {
  @override
  _DefaultScaffoldState createState() => _DefaultScaffoldState();
}

class _DefaultScaffoldState extends State<DefaultScaffold> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Trending(),
    Subscriptions(),
    Inbox(),
    Library(),
  ];

  void handleTabSwich(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube clone'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: DefaultBottomNavigationBar(
          currentIndex: this._currentIndex, onTap: this.handleTabSwich),
    );
  }
}
