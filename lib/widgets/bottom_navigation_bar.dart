import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
