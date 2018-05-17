//import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart';
//
//
//void main() => runApp(new Bazar());
//
//
//
//class Bazar extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      theme: defaultTargetPlatform == TargetPlatform.iOS
//          ? kIOSTheme
//          : kDefaultTheme,
//      title: 'Raian Bazar',
////      home: new MainPage(),
//      home: new HomeScreen(),
//    );
//  }
//}
//
//class MainPage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return new _MainPageState();
//  }
//}
//
//class _MainPageState extends State<MainPage> {
//
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//        appBar: new AppBar(
//          title: const Text('HomePage'),
//          actions: <Widget>[
//            new IconButton(
//              icon: new Icon(Icons.home),
//              onPressed: null,
//            ),
//            new IconButton(
//              icon: new Icon(Icons.search),
//              onPressed: null,
//            ),
//            new PopupMenuButton(
//                itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
//                  const PopupMenuItem<String>(
//                      value: 'Toolbar menu',
//                      child: const Text('Toolbar menu')
//                  ),
//                  const PopupMenuItem<String>(
//                      value: 'Right here',
//                      child: const Text('Right here')
//                  ),
//                  const PopupMenuItem<String>(
//                      value: 'Hooray!',
//                      child: const Text('Hooray!')
//                  ),
//                ],
//                onSelected: null)
//          ],
//        ),
//        body: new Card(
//          color: Colors.white,
//          margin: new EdgeInsets.symmetric(
//            vertical: 16.0,
//            horizontal: 16.0,
//          ),
//          child: new Center(
//            child: new Text("Select Region"),
//          ),
//        )
//
//
//    );
//  }
//
//  @override
//  void initState() {
//    super.initState();
//
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//
//  }
//}
