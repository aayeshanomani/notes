import 'package:flutter/material.dart';
import 'package:notes/models/global.dart';
import 'package:notes/models/widgets/intraycard.dart';

class Intray extends StatefulWidget {
  @override
  _IntrayState createState() => _IntrayState();
}

class _IntrayState extends State<Intray> {
  List<Container> list = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkgrey,
      child: ReorderableListView(
        onReorder: _onReorder,
        children: getList(),
        padding: EdgeInsets.only(top: 300),
      ),
    );
  }

  List<Widget> getList() {
    for (int i = 0; i < 10; i++) {
      list.add(Container(
      key: Key((i+1).toString()),
      color: Colors.transparent,
        child: IntrayTodo(
          title: (i+1).toString(),
        )
      ));
    }
    return list;
  }

  Widget getTODOwid() {}

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Container item = list.removeAt(oldIndex);
      list.insert(newIndex, item);
    });
  }
}
