import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ListTile(
          title: new Text('Вызвать скорую помощь'),
          subtitle: new Text("102"),
          onTap: () {
            launch("tel://102");
          },
        ),
        new Divider(),
        new ListTile(
          title: new Text('Вызвать участкового'),
          subtitle: new Text("Алимбетов Б.Б., Городская поликлинка №6"),
          onTap: () {

          },
        ),
        new Divider(),
        new ListTile(
          title: new Text('Вызвать врача'),
          subtitle: new Text("Найдите или укажите на карте..."),
          onTap: () {

          },
        ),
        new Divider(),
        new ListTile(
          title: new Text('Подобрать аптеку'),
          subtitle: new Text("Найти лекарства по рецепту"),
          onTap: () {

          },
        ),
        new Divider(),
      ],
    );
  }
}