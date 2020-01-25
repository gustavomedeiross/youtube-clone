import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/bottom_navigation_bar.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trending')),
      body: Center(
        child: Text('Trending'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
