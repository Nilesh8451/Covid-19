import 'package:corona_details/UI/About_Page.dart';
import 'package:corona_details/UI/About_Us_Page.dart';
import 'package:corona_details/UI/Hospitals_Page.dart';
import 'package:corona_details/UI/NavBar_Bottom.dart';
import 'package:corona_details/UI/News_Page.dart';
import 'package:corona_details/UI/Precautions_Page.dart';
import 'package:corona_details/UI/Stats_Page.dart';
import 'package:corona_details/UI/World_Figure.dart';
import 'package:flutter/foundation.dart';
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
      theme: new ThemeData(primarySwatch: Colors.lime),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => About(),
        '/n': (BuildContext context) => News(),
        '/f': (BuildContext context) => Stats(),
        '/s': (BuildContext context) => Precautions(),
        '/h': (BuildContext context) => Hospitals(),
        '/k': (BuildContext context) => AUS(),
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
      appBar: new AppBar(
        title: new Text("COVID-19"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      body: WFClass(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 70.0),
                children: <Widget>[
                  new ListTile(
                      title: new Text("About Virus"),
                      leading: new Icon(Icons.view_quilt),
                      trailing: new Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/a");
                      }),
                  new Divider(),
                  new ListTile(
                      title: new Text("News"),
                      leading: new Icon(Icons.pages),
                      trailing: new Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/n");
                      }),
                  new Divider(),
                  new ListTile(
                      title: new Text("Stats"),
                      leading: new Icon(Icons.graphic_eq),
                      trailing: new Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/f");
                      }),
                  new Divider(),
                  new ListTile(
                      title: new Text("Precautions"),
                      leading: new Icon(Icons.adjust),
                      trailing: new Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/s");
                      }),
                  new Divider(),
                  new ListTile(
                      title: new Text("Hospitals"),
                      leading: new Icon(Icons.local_hospital),
                      trailing: new Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/h");
                      }),
                  new Divider(),
                  new ListTile(
                    title: new Text("Close"),
                    leading: new Icon(Icons.cancel),
                    trailing: new Icon(Icons.close),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            BotClass(),
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboutClass();
  }
}

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NewsClass();
  }
}

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatsClass();
  }
}

class Precautions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreCauClass();
  }
}

class Hospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HospClass();
  }
}

class AUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboUsClass();
  }
}
