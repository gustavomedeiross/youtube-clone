import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/bottom_navigation_bar.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inbox')),
      body: Center(
        child: Text('Inbox'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
