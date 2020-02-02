import 'package:flutter/material.dart';

class SubscriptionsBarItem extends StatelessWidget {
  final String image;
  final String name;

  SubscriptionsBarItem({@required this.image, @required this.name});

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
            child: CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.14,
            child: RichText(
              text: TextSpan(
                text: name,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
