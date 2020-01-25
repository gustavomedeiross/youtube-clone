import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/bottom_navigation_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Text('Home'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
