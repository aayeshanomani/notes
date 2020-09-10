import 'package:flutter/material.dart';
import 'package:notes/models/classes/task.dart';
import 'package:notes/models/global.dart';
import 'package:notes/models/widgets/intraycard.dart';

class Intray extends StatefulWidget {
  @override
  _IntrayState createState() => _IntrayState();
}

class _IntrayState extends State<Intray> {
  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    tasks = getList();
    return Container(
      color: darkgrey,
      child: _buildReorderableList(context),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskID),
      title: IntrayTodo(
        title: item.title,
      ),
    );
  }

  Widget _buildReorderableList(BuildContext context) {
    return ReorderableListView(
        padding: EdgeInsets.only(top: 300),
        children:
            tasks.map((Task item) => _buildListTile(context, item)).toList(),
        onReorder: _onReorder);
  }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      tasks.add(Task("My todo "+i.toString(), false, i.toString()));
    }
    return tasks;
  }

  Widget getTODOwid() {}

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = tasks.removeAt(oldIndex);
      tasks.insert(newIndex, item);
    });
  }
}
