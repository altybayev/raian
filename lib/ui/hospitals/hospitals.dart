import 'package:flutter/material.dart';

class HospitalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Hospitals"),),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text('Главная больница Астаны'),
            subtitle: new Text("Адрес, пациентов: 2323423"),
            onTap: () {

            },
          ),
          new Divider(),
          new ListTile(
            title: new Text('Городская поликлинкика №1'),
            subtitle: new Text("Адрес, пациентов: 22343"),
            onTap: () {

            },
          ),
          new Divider(),
        ],
      )
    );
  }
}