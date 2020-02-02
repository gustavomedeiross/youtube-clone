import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_clone/models/channel.dart';
import 'package:youtube_clone/widgets/subscriptions_bar_item.dart';

class SubscriptionsBar extends StatelessWidget {
  final List<Channel> channels;

  SubscriptionsBar({@required this.channels});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: MediaQuery.of(context).size.height * 0.12,
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: channels.length,
              itemBuilder: (BuildContext context, int index) {
                return SubscriptionsBarItem(
                  image: channels[index].avatarUrl,
                  name: channels[index].name,
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            child: FlatButton(
              onPressed: () => {},
              child: Text(
                'ALL',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
