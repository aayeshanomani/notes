import 'package:flutter/material.dart';
import 'package:notes/models/global.dart';
import 'package:notes/models/widgets/intraycard.dart';

class Intray extends StatefulWidget {
  @override
  _IntrayState createState() => _IntrayState();
}

class _IntrayState extends State<Intray> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkgrey,
      child: ListView(
        children: getList(),
        padding: EdgeInsets.only(top: 300),
      ),
    );
  }

  List<Widget> getList() {
    List<IntrayTodo> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(IntrayTodo(title: 'Title',));
    }
    return list;
  }

  Widget getTODOwid() {}
}
