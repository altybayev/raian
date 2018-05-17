import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return new GestureDetector(
          onTap: () => {},
          child: new Card(
            child: new Column(
              children: <Widget>[
                new CircleAvatar(child: new Text("1"),),
                new Text("Text"),
                new Text("Text")
              ],
            ),
          ),
        );
      },
    );
  }
}