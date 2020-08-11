import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
        //primarySwatch: Colors.pink[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyHomePage(title: 'Notes')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.orange[50],
      child: Center(child: Text('home')),
    ),
    Container(
      color: Colors.orange[50],
    ),
    Container(
      color: Colors.orange[50],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold
        (
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: black,
            title: TabBar
            (
              tabs: 
              [
                Tab(icon: Icon(FontAwesomeIcons.anchor)),
                Tab(icon: Icon(FontAwesomeIcons.rev)),
                Tab(icon: Icon(FontAwesomeIcons.themeisle)),
              ],
              labelColor: yellow,
              unselectedLabelColor: Colors.pink[200],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(3.0),
              indicatorColor: yellow,
              labelPadding: EdgeInsets.all(3.0),
            ),
          ),
          /*title: Center
          (
            child: Text
            (
              'Notes',
              style: TextStyle(color: Colors.black),
            )
          ),*/
          body: Stack(
            children: <Widget>
            [
              TabBarView
              (
                children: 
                [
                  Container
                  (
                    color: yellow,
                  ),
                  Container
                  (
                    color: yellow,
                  ),
                  Container
                  (
                    color: yellow,
                  ),
                ],
              ),
              Container
              (
                padding: EdgeInsets.only(left: 50),
                height: 160,
                decoration: BoxDecoration
                (
                  color: black,
                  borderRadius: BorderRadius.only
                  (
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)
                  )
                ),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>
                  [
                    Text
                    (
                      "Intray",
                      style: intray,
                    ),
                    Container()
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.only(top: 120, left: MediaQuery.of(context).size.width*0.5-40),
                child: FloatingActionButton
                (
                  onPressed: null,
                  child: Icon(Icons.add, size: 70, color: yellow,),
                  backgroundColor: purple,
                ),
              )
            ]
              //height: MediaQuery.of(context).size.height*0.9,
              //padding: EdgeInsets.only(top: 50),
          ),
        ),
      ),
    );
  }
}
