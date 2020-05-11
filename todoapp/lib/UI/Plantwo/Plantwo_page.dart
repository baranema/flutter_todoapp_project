import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/plantwo_todo_widgets.dart';

class PlantwoPage extends StatefulWidget {
  @override
  _PlantwoPageState createState() => _PlantwoPageState();
}

class _PlantwoPageState extends State<PlantwoPage> {
  List<PlantwoTodo> todoItems = [];
  @override
  Widget build(BuildContext context) {
    todoItems = getList();
    return Container (
      color: ourblack,
      child: ReorderableListView (
        padding: EdgeInsets.only(top: 300),
        children: todoItems,
        onReorder: _onReorder,
      ),
    );
  }

  void _onReorder (int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final PlantwoTodo item = todoItems.removeAt(oldIndex);
      todoItems.insert(newIndex, item);
    });
  }

    List<Widget> getList() {
      for (int i = 0; i < 10; i++) {
        todoItems.add(PlantwoTodo(keyValue: i.toString(), title: "Hello"));
      }
      return todoItems;
    }
}

