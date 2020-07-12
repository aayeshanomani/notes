import 'package:flutter/material.dart';

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
          appBar: TabBar
          (
            tabs: 
            [
              Tab(icon: Icon(Icons.chrome_reader_mode)),
              Tab(icon: Icon(Icons.arrow_drop_down_circle)),
              Tab(icon: Icon(Icons.person_outline)),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.teal[300],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(3.0),
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(3.0),
          ),
          backgroundColor: Colors.teal[900],
          /*title: Center
          (
            child: Text
            (
              'Notes',
              style: TextStyle(color: Colors.black),
            )
          ),*/
          
          body: Container
          (
            //height: MediaQuery.of(context).size.height*0.9,
            padding: EdgeInsets.only(top: 50),
            child: TabBarView
            (
              children: 
              [
                Container
                (
                  child: Icon(Icons.directions_car),
                  color: Colors.teal[50],
                ),
                Container
                (
                  child: Icon(Icons.all_out),
                  color: Colors.teal[50],
                ),
                Container
                (
                  child: Icon(Icons.android),
                  color: Colors.teal[50],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
