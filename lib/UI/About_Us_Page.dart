import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AboUsClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: new AppBar(
        title: new Text("About us"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 10.0, top: 20),
                child: Text(
                  "Developer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 20, bottom: 25),
                child: Wrap(
                  alignment: WrapAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      'assets/Nilesh1.jpg',
                      width: 100,
                      height: 100,
                      alignment: Alignment.centerLeft,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Nilesh Ganpat Chavan",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "nileshchavan8451@gmail.com",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: SelectableText(
                              "INSTA ID: the_voyager26",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 10.0, top: 20),
                child: Text(
                  "Content Researcher",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 20, bottom: 30),
                child: Wrap(
                  alignment: WrapAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      'assets/Kamesh.jpg',
                      width: 110,
                      height: 115,
                      alignment: Alignment.centerLeft,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, top: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Kamesh Deepak Bhise",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "kameshbhise24@gmail.com",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: SelectableText(
                              "INSTA ID: kameshbhise",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
