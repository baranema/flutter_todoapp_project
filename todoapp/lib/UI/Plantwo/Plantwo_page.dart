import 'package:flutter/material.dart';
import 'package:todoapp/models/classes/todoitem.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/plantwo_todo_widgets.dart';

class PlantwoPage extends StatefulWidget {
  @override
  _PlantwoPageState createState() => _PlantwoPageState();
}

class _PlantwoPageState extends State<PlantwoPage> {
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    taskList = getList();
    return Container (
      color: ourblack,
      child: _buildReaorderableListSimple(context),
    );
  }
  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId),
      title: PlantwoTodo(
        title: item.title,
        ),
    );
  }

  Widget _buildReaorderableListSimple(BuildContext context) {
    return ReorderableListView(
      padding: EdgeInsets.only(top: 300.0),
      children: taskList.map((Task item) => _buildListTile(context, item)).toList(),
      onReorder: (oldIndex, newIndex) {
        setState(() {
          Task item = taskList[oldIndex];
          taskList.remove(item);
          taskList.insert(newIndex, item);
        });
      },
      );
  }

  void _onReorder (int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = taskList.removeAt(oldIndex);
      taskList.insert(newIndex, item);
    });
  }

    List<Task> getList() {
      for (int i = 0; i < 10; i++) {
        taskList.add(Task("MyfirstTodo " + i.toString(), false, i.toString()));
      }
      return taskList;
    }
}

