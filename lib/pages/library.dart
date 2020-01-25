import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/bottom_navigation_bar.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Library')),
      body: Center(
        child: Text('Library'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
