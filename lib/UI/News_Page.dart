import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/foundation.dart';

class NewsClass extends StatefulWidget {
  @override
  _NewsClassState createState() => _NewsClassState();
}

class _NewsClassState extends State<NewsClass> {
  List news = [];
  var statusre = 'Conn';

  StreamSubscription<ConnectivityResult> subscription;
  Connectivity connectivity;

  getNews() async {
    try {
      // var response = await Dio().get(
      // 'http://newsapi.org/v2/everything?q=corona-virus&apiKey=b0f757f46b7941c0a646532a3735a963');
      var response = await Dio().get(
          'http://newsapi.org/v2/top-headlines?country=in&apiKey=b0f757f46b7941c0a646532a3735a963');
      setState(() {
        news = response.data['articles'];
      });
      return response.data['articles'];
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
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        statusre = 'Conn';
        fetchData();
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
  }

  notConn() {
    setState(() {});
  }

  fetchData() {
    getNews().then((data) => {
          // setState(() => {news = data})
        });
  }

  Future<Null> refreshNews() async {
    connectivity.checkConnectivity().then((onValue) => {
          if (onValue == ConnectivityResult.wifi ||
              onValue == ConnectivityResult.mobile)
            {
              setState(() {
                news = [];
              }),
              Future.delayed(Duration(seconds: 2)),
              getNews().then((data) => {
                    setState(() {
                      // news = data;
                    })
                  }),
            }
        });
    return null;
  }

  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: false);
    } else {
      // print("cant Launch url $url");
    }
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    if (statusre == 'Conn') {
      return new Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        appBar: new AppBar(
          title: new Text("News"),
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        body: Container(
          child: news.length > 0
              ? RefreshIndicator(
                  onRefresh: refreshNews,
                  child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 5.0, right: 5.0, top: 15, bottom: 5),
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
                                            padding: EdgeInsets.only(bottom: 5),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    '' +
                                                        news[index]['title']
                                                            .toString(),
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: 5),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    '' +
                                                        news[index]
                                                                ['description']
                                                            .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 5, top: 5),
                                            child: Row(
                                              children: <Widget>[
                                                RaisedButton(
                                                  onPressed: () {
                                                    launchURL(
                                                        news[index]['url']);
                                                  },
                                                  child: Text(
                                                    'Show full article',
                                                    style:
                                                        TextStyle(fontSize: 13),
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
                  child: Container(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                    ),
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
