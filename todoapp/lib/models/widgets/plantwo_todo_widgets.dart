

import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class PlantwoTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:20, right: 20, bottom: 20),
      height: 136,
      decoration: BoxDecoration (
        color: ourblue,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
    );
  }
}