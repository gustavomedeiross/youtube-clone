import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_clone/widgets/category_bar_item.dart';

class CategoryBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: MediaQuery.of(context).size.height * 0.12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          CategoryBarItem(
            icon: Icons.music_note,
            title: 'Music',
          ),
          CategoryBarItem(
            icon: Icons.games,
            title: 'Gaming',
          ),
          CategoryBarItem(
            icon: Icons.receipt,
            title: 'News',
          ),
          CategoryBarItem(
            icon: Icons.local_movies,
            title: 'Movies',
          ),
        ],
      ),
    );
  }
}
