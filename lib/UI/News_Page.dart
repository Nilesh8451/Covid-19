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

  getNews() async {
    // var response = await Dio().get(
    // 'http://newsapi.org/v2/everything?q=corona-virus&apiKey=b0f757f46b7941c0a646532a3735a963');
    var response = await Dio().get(
        'http://newsapi.org/v2/top-headlines?country=in&apiKey=b0f757f46b7941c0a646532a3735a963');

    return response.data['articles'];
  }

  @override
  void initState() {
    getNews().then((data) => {
          setState(() => {news = data})
        });

    super.initState();
  }

  Future<Null> refreshNews() async {
    setState(() {
      news = [];
    });
    await Future.delayed(Duration(seconds: 2));
    getNews().then((data) => {
          setState(() {
            news = data;
          })
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
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: new AppBar(
        title: new Text("News"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
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
                                                      news[index]['description']
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
                                                  launchURL(news[index]['url']);
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
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
