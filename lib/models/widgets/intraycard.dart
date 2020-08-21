import 'package:flutter/material.dart';
import 'package:notes/models/global.dart';

class IntrayTodo extends StatefulWidget {

   final String title;

  const IntrayTodo({this.title});

  @override
  _IntrayTodoState createState() => _IntrayTodoState();
}

class _IntrayTodoState extends State<IntrayTodo> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: red,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Color(0xff65532F).withOpacity(0.5),
              blurRadius: 10,
            )
          ]),
      child: Row(
        children: <Widget>[
          Radio(value: null, groupValue: null, onChanged: null),
          Column(
            children: <Widget>[Text(widget.title, style: darkTodoTitle,)],
          )
        ],
      ),
    );
  }
}
