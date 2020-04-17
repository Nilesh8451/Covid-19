import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WFClass extends StatefulWidget {
  @override
  _WFClassState createState() => _WFClassState();
}

class _WFClassState extends State<WFClass> {
  List countries = null;
  int cases = 0;
  int deaths = 0;
  int recovery = 0;
  String mr = '0';
  List TP = [{}];
  getCountries() async {
    var response = await Dio().get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countries = response.data;
    });
    var response1 = await Dio().get('https://corona.lmao.ninja/v2/all');
    cases = response1.data['cases'];
    deaths = response1.data['deaths'];
    recovery = response1.data['recovered'];
    mr = ((deaths / cases) * 100).toString();
    if (mr.length > 4) {
      mr = mr.substring(0, 5);
    }
    return response1.data;
  }

  Future<Null> refreshC() async {
    setState(() {
      countries = null;
    });
    await Future.delayed(Duration(seconds: 2));
    getCountries().then((data) => {
          setState(() {
            countries = data;
          })
        });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    getCountries();
    return Container(
      padding: EdgeInsets.all(30.0),
      child: countries != null
          ? RefreshIndicator(
              onRefresh: refreshC,
              child: ListView.builder(
                  itemCount: TP.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 7.0, bottom: 20.0),
                              child: Text(
                                "World Figure",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Card(
                              child: Container(
                                // width: 300,
                                width: deviceWidth * 0.80,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Row(children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(bottom: 4),
                                            child: Text(
                                              'Cases',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Image.asset(
                                            'assets/count.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.black,
                                            alignment: Alignment.centerLeft,
                                          )),
                                          Expanded(
                                            child: Text(
                                              '$cases',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              child: Container(
                                // width: 300,
                                width: deviceWidth * 0.80,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Row(children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(bottom: 4),
                                            child: Text(
                                              'Deaths',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Image.asset(
                                            'assets/death.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.black,
                                            alignment: Alignment.centerLeft,
                                          )),
                                          Expanded(
                                            child: Text(
                                              '$deaths',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              child: Container(
                                // width: 300,
                                width: deviceWidth * 0.80,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Row(children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(bottom: 4),
                                            child: Text(
                                              'Recovery',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Image.asset(
                                            'assets/patient.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.black,
                                            alignment: Alignment.centerLeft,
                                          )),
                                          Expanded(
                                            child: Text(
                                              '$recovery',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              child: Container(
                                // width: 300,
                                width: deviceWidth * 0.80,
                                // height: 100,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Row(children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(bottom: 4),
                                            child: Text(
                                              'Mortality Rate',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Image.asset(
                                            'assets/fever.png',
                                            width: 40,
                                            height: 40,
                                            color: Colors.black,
                                            alignment: Alignment.centerLeft,
                                          )),
                                          Expanded(
                                            child: Text(
                                              '$mr' + '%',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(fontSize: 21),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
