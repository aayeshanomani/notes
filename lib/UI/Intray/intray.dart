import 'package:flutter/material.dart';
import 'package:notes/models/global.dart';

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
    return 
    [
    ];
  }
}
