import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:corona_details/UI/Stats/District.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:corona_details/UI/Stats/Countries.dart';
import 'package:corona_details/UI/Stats/States.dart';

class StatsMainPage extends StatefulWidget {
  @override
  _StatsMainState createState() => _StatsMainState();
}

class _StatsMainState extends State<StatsMainPage>
    with SingleTickerProviderStateMixin {
  List stats = [];
  List filterListC = [];

  List statsState = [];
  List filterListS = [];

  var obj;
  List districts = [];
  List filterListD = [];

  var statusre = 'Conn';

  StreamSubscription<ConnectivityResult> subscription;
  Connectivity connectivity;

  TabController tabController;

  getStats() async {
    try {
      var response = await Dio().get('https://corona.lmao.ninja/v2/countries');
      setState(() {
        stats = filterListC = response.data;
      });
      return response.data;
    } catch (e) {
      // print(e);
      return;
    }
  }

  getStatsState() async {
    try {
      var response =
          await Dio().get('https://api.rootnet.in/covid19-in/stats/latest');
      setState(() {
        statsState = filterListS = response.data['data']['regional'];
      });
      return response.data['data']['regional'];
    } catch (e) {
      // print(e);
      return;
    }
  }

  getStatsDistrict() async {
    try {
      var response = await Dio()
          .get('https://api.covid19india.org/state_district_wise.json');

      response.data.forEach((k, v) => {
            // print('*************** ${k}: ${v}'),
            v = v['districtData'],
            v.forEach((k, v) => {
                  // print('^^^^^^^^^^^^^ ${k}:  ${v}'),
                  // v.forEach((k, v) => {
                  obj = {'dis': k, 'info': v},
                  districts.add(obj),
                  //     })
                })
          });
      setState(() {
        districts = filterListD = districts;
      });
      return districts;
    } catch (e) {
      // print(e);
      return;
    }
  }

  @override
  void initState() {
    connectivity = new Connectivity();
    subscription =
        connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      // print(result);
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        statusre = 'Conn';
        fetchData();
        // print(result);
      } else {
        statusre = 'NotConn';
      }
    });

    connectivity.checkConnectivity().then((onValue) => {
          // print(onValue),
          if (onValue == ConnectivityResult.wifi ||
              onValue == ConnectivityResult.mobile)
            {statusre = 'Conn', fetchData()}
          else
            {statusre = 'NotConn', notConn()}
        });

    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  notConn() {
    setState(() {});
  }

  fetchData() {
    getStats().then((data) => {
          // setState(() => {stats = filterListC = data})
        });
    getStatsState().then((data) => {
          // setState(() => {statsState = filterListS = data})
        });
    getStatsDistrict().then((data) => {
          // setState(() => {districts = filterListD = data})
        });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    if (statusre == 'Conn') {
      return Container(
        child: new Scaffold(
          backgroundColor: Color.fromARGB(255, 242, 242, 242),
          appBar: new AppBar(
            title: new Text("Stats"),
          ),
          body: stats.length > 0
              ? new TabBarView(
                  children: <Widget>[
                    new CountriesInfoClass(stats, filterListC),
                    new StatesInfoClass(statsState, filterListS),
                    new DistrictInfoClass(districts, filterListD)
                  ],
                  controller: tabController,
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
          bottomNavigationBar: new Material(
            color: Colors.lime,
            child: new TabBar(
              controller: tabController,
              tabs: <Widget>[
                new Tab(
                  child: new Text("Country"),
                  // icon: new Icon(Icons.favorite),
                ),
                new Tab(
                  // icon: new Icon(Icons.email),
                  child: new Text("States"),
                ),
                new Tab(
                  // icon: new Icon(Icons.email),
                  child: new Text("District"),
                )
              ],
            ),
          ),
        ),
      );
    } else if (statusre == 'NotConn') {
      return new Scaffold(
          backgroundColor: Color.fromRGBO(246, 246, 246, 1),
          appBar: new AppBar(
            title: new Text("Stats"),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 100),
              ),
              Image.asset('assets/NoInCo2.png'),
            ],
          ));
    }
  }
}
