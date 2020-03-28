import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class StatsClass extends StatefulWidget {
  @override
  _StatsClassState createState() => _StatsClassState();
}

class _StatsClassState extends State<StatsClass> {
  List stats = [];
  List filterList = [];

  getStats() async {
    var response = await Dio().get('https://corona.lmao.ninja/countries');
    return response.data;
  }

  @override
  void initState() {
    getStats().then((data) => {
          setState(() => {stats = filterList = data})
        });

    super.initState();
  }

  Future<Null> refreshRe() async {
    setState(() {
      stats = [];
    });
    await Future.delayed(Duration(seconds: 2));
    getStats().then((data) => {
          setState(() {
            stats = data;
          })
        });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: new AppBar(title: new Text("Stats")),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                hintText: 'Enter Country Name....',
              ),
              onChanged: (string) {
                setState(() {
                  stats = filterList
                      .where((u) => (u['country']
                          .toLowerCase()
                          .contains(string.toLowerCase())))
                      .toList();
                });
              },
            ),
          ),
          Expanded(
            child: stats.length > 0
                ? RefreshIndicator(
                    onRefresh: refreshRe,
                    child: ListView.builder(
                        itemCount: stats.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 20),
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    child: Container(
                                      // width: 300,
                                      width: deviceWidth * 0.80,
                                      // height: 100,
                                      child: Padding(
                                        padding: EdgeInsets.all(25.0),
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      // "Hello",
                                                      stats[index]['country'],
                                                      style: TextStyle(
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Cases:  ' +
                                                          stats[index]['cases']
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Todays Cases:  ' +
                                                          stats[index]
                                                                  ['todayCases']
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Deaths: ' +
                                                          stats[index]['deaths']
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Todays Death:  ' +
                                                          stats[index][
                                                                  'todayDeaths']
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Recovered:  ' +
                                                          stats[index]
                                                                  ['recovered']
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Active:  ' +
                                                          stats[index]['active']
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Critical:  ' +
                                                          stats[index]
                                                                  ['critical']
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Text(
                                                      'Mortality Rate:  ' +
                                                          ((stats[index]['deaths'] /
                                                                      stats[index]
                                                                          [
                                                                          'cases']) *
                                                                  100)
                                                              .toString()
                                                              .substring(0, 5) +
                                                          '%',
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    ),
                                                  ),
                                                ],
                                              ),
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
          )
        ],
      ),
    );
  }
}
