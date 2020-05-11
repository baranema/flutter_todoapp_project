

import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class PlantwoTodo extends StatelessWidget {
  final String title;
  final String keyValue;
  PlantwoTodo({this.keyValue, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue),
      margin: EdgeInsets.only(left:15, right: 15, bottom: 15),
      height: 136,
      decoration: BoxDecoration (
        color: ourblue,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
          ),
        ]
      ),
      child: Row(children: <Widget>[
        Radio(

        ),
        Column(
          children: <Widget>[
            Text(title, style: todotitle)
          ],
        )
      ],),
    );
  }
}