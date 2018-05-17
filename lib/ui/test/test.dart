import 'package:flutter/material.dart';

/// Carrousel
class Carroussel extends StatefulWidget {
  @override
  _CarrousselState createState() => new _CarrousselState();
}

class _CarrousselState extends State<Carroussel> {
  PageController controller;
  int currentpage = 0;

  @override
  initState() {
    super.initState();
    controller = new PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 1.0,
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: new PageView.builder(
          onPageChanged: (value) {
            setState(() {
              currentpage = value;
            });
          },
          scrollDirection: Axis.vertical,
          controller: controller,
          itemBuilder: (context, index) => builder(index)),
        ),
      ),
    );
  }

  builder(int index) {
    return new AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double value = controller.page - index;

        value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);

        return new Center(
          child: new SizedBox(
            height: Curves.easeOut.transform(value) * 300,
            width: Curves.easeOut.transform(value) * 250,
            child: child,
          ),
        );
      },
      child: new Container(
        margin: const EdgeInsets.all(8.0),
        color: index % 2 == 0 ? Colors.blue : Colors.red,
      ),
    );
  }
}











































/// TEST

class TestPage extends StatelessWidget {

  var pages = ["One", "Two", "Three", "Four", "Five"];
  var colors = [Colors.red, Colors.green, Colors.blue, Colors.cyan, Colors.orange];

  @override
  Widget build(BuildContext context) {
    const double OFFSET = 32.0;
    Size viewportSize = MediaQuery.of(context).size;
    Offset dragStart, dragEnd, dragDelta;

    List<Positioned> widgets = [
      new Positioned(
        top: OFFSET * 4 - OFFSET / 4.0,
        left: OFFSET,
        child: new SizedBox.fromSize(
          size: new Size(viewportSize.width - OFFSET * 2, viewportSize.height - OFFSET * 5),
          child: new Opacity(
            opacity: 1.0,
            child: new Container(
              color: Colors.blue,
            ),
          ),
        ),
      ),
      new Positioned(
        top: OFFSET * 4,
        left: OFFSET,
        child: new SizedBox.fromSize(
          size: new Size(viewportSize.width - OFFSET * 2, viewportSize.height - OFFSET * 5),
          child: new Opacity(
            opacity: 1.0,
            child: new Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    ];


    int currenPage = widgets.length - 1;


    return new GestureDetector(
//      onVerticalDragStart: (DragStartDetails details) {
//        print("DragStart: " + details.toString());
//        dragStart = details.globalPosition;
//      },
      onVerticalDragEnd: (DragEndDetails details) {
//        print("Drag Delta: " + dragDelta.toString());
      },
//      onVerticalDragDown: (DragDownDetails details) {
//        print("DragDown: " + details.toString());
//      },
      onVerticalDragUpdate: (DragUpdateDetails details) {
        print(details.primaryDelta);
        dragDelta = details.delta;

      },
      child: new Stack(
        children: widgets,
      ),
    );
  }
}