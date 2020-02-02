import 'package:flutter/material.dart';

class CategoryBarItem extends StatelessWidget {
  final IconData icon;
  final String title;

  CategoryBarItem({@required this.icon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width * 0.14,
            width: MediaQuery.of(context).size.width * 0.14,
            margin: EdgeInsets.only(bottom: 5),
            child: Icon(
              icon,
              color: Theme.of(context).accentColor,
              size: 28,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
              shape: BoxShape.circle,
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
