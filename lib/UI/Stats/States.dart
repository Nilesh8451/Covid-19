import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class StatesInfoClass extends StatefulWidget {
  List statsStateD = [];
  List filterListSD = [];
  StatesInfoClass(this.statsStateD, this.filterListSD);
  @override
  _StatesClassState createState() =>
      _StatesClassState(this.statsStateD, this.filterListSD);
}

class _StatesClassState extends State<StatesInfoClass> {
  List statsState = [];
  List filterList = [];

  _StatesClassState(this.statsState, this.filterList);

  StreamSubscription<ConnectivityResult> subscription;
  Connectivity connectivity;

  getStatsState() async {
    var response =
        await Dio().get('https://api.rootnet.in/covid19-in/stats/latest');
    print(response.data['data']['regional']);
    return response.data['data']['regional'];
  }

  @override
  void initState() {
    connectivity = new Connectivity();
    subscription =
        connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      // print(result);
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        // print(result);
      }
    });
    super.initState();
  }

  Future<Null> refreshReState() async {
    connectivity.checkConnectivity().then((onValue) => {
          if (onValue == ConnectivityResult.wifi ||
              onValue == ConnectivityResult.mobile)
            {
              setState(() {
                statsState = [];
              }),
              Future.delayed(Duration(seconds: 2)),
              getStatsState().then((data) => {
                    setState(() {
                      statsState = data;
                    })
                  }),
            }
        });
    return null;
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      // appBar: new AppBar(title: new Text("Stats")),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                hintText: 'Enter State Name....',
              ),
              onChanged: (string) {
                setState(() {
                  statsState = filterList
                      .where((u) => (u['loc']
                          .toLowerCase()
                          .contains(string.toLowerCase())))
                      .toList();
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              child: statsState.length > 0
                  ? RefreshIndicator(
                      onRefresh: refreshReState,
                      child: ListView.builder(
                          itemCount: statsState.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 20),
                                child: Column(
                                  children: <Widget>[
                                    Card(
                                      child: Container(
                                        width: 300,
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
                                                        statsState[index]
                                                            ['loc'],
                                                        style: TextStyle(
                                                            fontSize: 23,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                        textAlign:
                                                            TextAlign.left,
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
                                                            statsState[index][
                                                                    'totalConfirmed']
                                                                .toString(),
                                                        // textAlign: TextAlign.left,
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
                                                        'Indian:  ' +
                                                            statsState[index][
                                                                    'confirmedCasesIndian']
                                                                .toString(),
                                                        // textAlign: TextAlign.left,
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
                                                        'Foreigner:  ' +
                                                            statsState[index][
                                                                    'confirmedCasesForeign']
                                                                .toString(),
                                                        // textAlign: TextAlign.left,
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
                                                        'Recovered: ' +
                                                            statsState[index][
                                                                    'discharged']
                                                                .toString(),
                                                        // textAlign: TextAlign.left,
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
                                                        'Deaths:  ' +
                                                            statsState[index]
                                                                    ['deaths']
                                                                .toString(),
                                                        // textAlign: TextAlign.left,
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
                                                      child: ((statsState[index]
                                                                              [
                                                                              'deaths'] /
                                                                          statsState[index]
                                                                              [
                                                                              'totalConfirmed']) *
                                                                      100)
                                                                  .toString()
                                                                  .length >
                                                              4
                                                          ? Text(
                                                              'Mortality Rate:  ' +
                                                                  ((statsState[index]['deaths'] /
                                                                              statsState[index][
                                                                                  'totalConfirmed']) *
                                                                          100)
                                                                      .toString()
                                                                      .substring(
                                                                          0,
                                                                          5) +
                                                                  '%',
                                                              style: TextStyle(
                                                                  fontSize: 19),
                                                            )
                                                          : Text(
                                                              'Mortality Rate:  ' +
                                                                  ((statsState[index]['deaths'] /
                                                                              statsState[index]['totalConfirmed']) *
                                                                          100)
                                                                      .toString() +
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
            ),
          ),
        ],
      ),
    );
  }
}
