import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:bazar/ui/home/home.dart';
import 'package:bazar/ui/hospitals/hospitals.dart';
import 'package:bazar/ui/test/test.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {

  String role = "user";

  void changeCabinet() {
    setState(() {
      this.role = "not user";
    });
  }

  @override
  Widget build(BuildContext context) {
//    Widget cabinet;
//
//    if (role == "user")
//      cabinet = new HomePage();
//    else
//      cabinet = new HospitalsPage();

    return new MaterialApp(
      title: 'Flutter Animations',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Scaffold(
        body: new Carroussel(),
//        floatingActionButton: new FloatingActionButton(
//          onPressed: changeCabinet,
//        ),
      ),
      routes: <String, WidgetBuilder>{
        "/hospitals": (BuildContext context) => new HospitalsPage(),
//        "/animation_controller_output": (BuildContext context) => new AnimationControllerOutputPage(),
//        "/using_animation_controller": (BuildContext context) => new UsingAnimationControllerPage(),
//        "/stack_01": (BuildContext context) => new Stack01ControllerPage(),
      },
    );
  }
}