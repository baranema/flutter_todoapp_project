import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/plantwo_todo_widgets.dart';

class PlantwoPage extends StatefulWidget {
  @override
  _PlantwoPageState createState() => _PlantwoPageState();
}

class _PlantwoPageState extends State<PlantwoPage> {
  @override
  Widget build(BuildContext context) {
    return Container (
      color: ourblack,
      child: ListView (
        padding: EdgeInsets.only(top: 300),
        children: getList(),
      ),
    );
  }

    List<Widget> getList() {
      List<PlantwoTodo> list = [];
      for (int i = 0; i < 10; i++) {
        list.add(PlantwoTodo());
      }
      return list;
    }
}