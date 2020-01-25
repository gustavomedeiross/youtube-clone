import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/bottom_navigation_bar.dart';

class Subscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Subscriptions')),
      body: Center(
        child: Text('Subscriptions'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
