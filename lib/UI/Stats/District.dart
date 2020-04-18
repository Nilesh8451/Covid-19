import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DistrictInfoClass extends StatefulWidget {
  List districtsT = [];
  List filterListDT = [];

  DistrictInfoClass(this.districtsT, this.filterListDT);
  @override
  _DistrictInfoClassState createState() =>
      _DistrictInfoClassState(districtsT, filterListDT);
}

class _DistrictInfoClassState extends State<DistrictInfoClass> {
  var obj;
  List districts = [];
  List filterListD = [];

  _DistrictInfoClassState(this.districts, this.filterListD);
  getStatsDistrict() async {
    var response = await Dio()
        .get('https://api.covid19india.org/state_district_wise.json');
    // print(response.data);

    response.data.forEach((k, v) => {
          // print('-----------------------------${k}: ${v}'),
          v.forEach((k, v) => {
                // print('********************** ${k}: ${v}'),
                v.forEach((k, v) => {
                      // print('********************** ${k}: ${v}'),
                      obj = {'dis': k, 'info': v},
                      districts.add(obj),
                      // filterListD.add(obj)
                    })
              })
        });
    // print(districts);

    return districts;
  }

  Future<Null> refreshRe() async {
    setState(() {
      districts = [];
    });
    await Future.delayed(Duration(seconds: 2));
    getStatsDistrict().then((data) => {
          setState(() => {districts = filterListD = data})
        });
    return null;
  }

  @override
  void initState() {
    super.initState();
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
                hintText: 'Enter District Name....',
              ),
              onChanged: (string) {
                setState(() {
                  districts = filterListD
                      .where((u) => (u['dis']
                          .toLowerCase()
                          .contains(string.toLowerCase())))
                      .toList();
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              child: districts.length > 0
                  ? RefreshIndicator(
                      onRefresh: refreshRe,
                      child: ListView.builder(
                          itemCount: districts.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 15),
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
                                                        districts[index]['dis'],
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
                                                            districts[index]
                                                                        ['info']
                                                                    [
                                                                    'confirmed']
                                                                .toString(),
                                                        // textAlign: TextAlign.left,
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
