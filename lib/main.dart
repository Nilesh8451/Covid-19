import 'package:corona_details/UI/About_Page.dart';
import 'package:corona_details/UI/About_Us_Page.dart';
import 'package:corona_details/UI/Hospitals_Page.dart';
import 'package:corona_details/UI/News_Page.dart';
import 'package:corona_details/UI/Precautions_Page.dart';
import 'package:corona_details/UI/Stats_Main_Page.dart';
import 'package:corona_details/UI/World_Figure.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.lime),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => AboutClass(),
        '/n': (BuildContext context) => NewsClass(),
        '/f': (BuildContext context) => StatsMainPage(),
        '/s': (BuildContext context) => PreCauClass(),
        '/h': (BuildContext context) => HospClass(),
        '/k': (BuildContext context) => AboUsClass(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      body: WFClass(),
    );
  }
}
