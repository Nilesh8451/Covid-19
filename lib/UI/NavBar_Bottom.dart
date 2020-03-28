import 'package:flutter/material.dart';

class BotClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Column(
                  children: <Widget>[
                    Text("Give Feedback At"),
                    Padding(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: SelectableText(
                        "nileshchavan8451@gmail.com",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                    Text("Select to copy"),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 13,
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        children: <Widget>[
                          Text(
                            "What to Know more about us",
                            style: TextStyle(fontSize: 13),
                          ),
                          InkWell(
                              child: new Text('  Click here',
                                  style: TextStyle(
                                      color: Colors.blueAccent, fontSize: 13)),
                              onTap: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).pushNamed("/k");
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
