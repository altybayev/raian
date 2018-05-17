import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  var _regionList = [
    {
      'id': 1,
      'name': "город Астана"
    },
    {
      'id': 2,
      'name': "город Алматы"
    },
    {
      'id': 3,
      'name': "город Шымкент"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final NavigatorState navigator = Navigator.of(context);

    void _goToPage(int index) {
      Navigator.of(context).pushNamed("/hospitals");
    }

    return new ListView.builder(
      itemCount: _regionList.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListTile(
          title: new Text(_regionList[index]['name']),
          subtitle: new Text('Подписчиков: '),
          trailing: new Icon(Icons.arrow_right),
          onTap: () {
            _goToPage(index);
          },
        );
      },
    );
  }
}