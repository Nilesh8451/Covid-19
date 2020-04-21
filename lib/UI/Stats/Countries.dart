import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CountriesInfoClass extends StatefulWidget {
  List statsS = [];
  List filterListS = [];
  CountriesInfoClass(this.statsS, this.filterListS);

  @override
  _CountriesInfoClassState createState() =>
      _CountriesInfoClassState(this.statsS, this.filterListS);
}

class _CountriesInfoClassState extends State<CountriesInfoClass> {
  List stats = [];
  List filterList = [];
  _CountriesInfoClassState(this.stats, this.filterList);

  StreamSubscription<ConnectivityResult> subscription;
  Connectivity connectivity;

  getStats() async {
    var response = await Dio().get('https://corona.lmao.ninja/v2/countries');
    return response.data;
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

  Future<Null> refreshRe() async {
    connectivity.checkConnectivity().then((onValue) => {
          if (onValue == ConnectivityResult.wifi ||
              onValue == ConnectivityResult.mobile)
            {
              setState(() {
                stats = [];
              }),
              Future.delayed(Duration(seconds: 2)),
              getStats().then((data) => {
                    setState(() {
                      stats = data;
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
            child: Container(
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
                                                    Image.network(
                                                      stats[index]
                                                              ['countryInfo']
                                                          ['flag'],
                                                      width: 45,
                                                      height: 45,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        // "Hello",
                                                        stats[index]['country'],
                                                        style: TextStyle(
                                                            fontSize: 25,
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
                                                            stats[index]
                                                                    ['cases']
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
                                                        'Todays Cases:  ' +
                                                            stats[index][
                                                                    'todayCases']
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
                                                        'Deaths: ' +
                                                            stats[index]
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
                                                      child: Text(
                                                        'Todays Death:  ' +
                                                            stats[index][
                                                                    'todayDeaths']
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
                                                        'Recovered:  ' +
                                                            stats[index][
                                                                    'recovered']
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
                                                        'Active:  ' +
                                                            stats[index]
                                                                    ['active']
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
                                                        'Critical:  ' +
                                                            stats[index]
                                                                    ['critical']
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
                                                      child: ((stats[index]['deaths'] /
                                                                          stats[index]
                                                                              [
                                                                              'cases']) *
                                                                      100)
                                                                  .toString()
                                                                  .length >
                                                              4
                                                          ? Text(
                                                              'Mortality Rate:  ' +
                                                                  ((stats[index]['deaths'] /
                                                                              stats[index][
                                                                                  'cases']) *
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
                                                                  ((stats[index]['deaths'] /
                                                                              stats[index]['cases']) *
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
