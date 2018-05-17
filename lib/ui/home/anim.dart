import 'package:flutter/material.dart';
import 'dart:math';

class AnimPage extends StatefulWidget {

  @override
  _AnimPageState createState() => new _AnimPageState();


}

class _AnimPageState extends State<AnimPage> {

  var topPosition = new Offset(100.0, 100.0);

  void onDrag(DragUpdateDetails details) {
    setState(() {
      topPosition = new Offset(topPosition.dx * details.delta.dx, topPosition.dy * details.delta.dy);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget bottomCard = new Positioned(
      child: new Opacity(
        opacity: 1.0,
        child: new Padding(
          padding: new EdgeInsets.fromLTRB(32.0, 40.0, 32.0, 16.0),
          child: new Card(
            child: new Container(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

    Widget topCard = new Positioned(
//      left: topPosition.dx,
//      top: topPosition.dy,
      child: new Opacity(
        opacity: 0.5,
        child: new Padding(
          padding: new EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 24.0),
          child: new Card(
            child: new Container(
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );

    return new GestureDetector(
      onVerticalDragUpdate: (DragUpdateDetails details) {
        print(details.toString());

      },
      child: new Container(
        color: Colors.grey,
        child: new Stack(
          children: <Widget>[
            bottomCard,
            topCard
          ],
        ),
      ),
    );
  }
}