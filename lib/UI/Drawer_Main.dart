import 'package:corona_details/UI/NavBar_Bottom.dart';
import 'package:flutter/material.dart';

class DrawerClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                // new ListTile(
                //   title: new Text("Close"),
                //   leading: new Icon(Icons.cancel),
                //   trailing: new Icon(Icons.close),
                //   onTap: () => Navigator.of(context).pop(),
                // ),
              ],
            ),
          ),
          BotClass(),
        ],
      ),
    );
  }
}
