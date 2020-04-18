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

  TabController tabController;

  getStats() async {
    var response = await Dio().get('https://corona.lmao.ninja/v2/countries');
    return response.data;
  }

  getStatsState() async {
    var response =
        await Dio().get('https://api.rootnet.in/covid19-in/stats/latest');

    return response.data['data']['regional'];
  }

  getStatsDistrict() async {
    var response = await Dio()
        .get('https://api.covid19india.org/state_district_wise.json');

    response.data.forEach((k, v) => {
          // print('${k}: ${v}'),
          v.forEach((k, v) => {
                v.forEach((k, v) => {
                      obj = {'dis': k, 'info': v},
                      districts.add(obj),
                    })
              })
        });

    return districts;
  }

  @override
  void initState() {
    getStats().then((data) => {
          setState(() => {stats = filterListC = data})
        });

    getStatsState().then((data) => {
          setState(() => {statsState = filterListS = data})
        });

    getStatsDistrict().then((data) => {
          setState(() => {districts = filterListD = data})
        });

    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
    ));
  }
}
