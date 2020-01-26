import 'package:flutter/material.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function onTap;

  DefaultBottomNavigationBar(
      {@required this.currentIndex, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up),
          title: Text('Trending'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          title: Text('Subscriptions'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text('Inbox'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          title: Text('Library'),
        ),
      ],
    );
  }
}
