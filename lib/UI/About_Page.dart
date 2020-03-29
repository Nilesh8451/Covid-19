import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutClass extends StatefulWidget {
  @override
  _AboutClassState createState() => _AboutClassState();
}

class _AboutClassState extends State<AboutClass> {
  String mr = '0';

  String mr1 = '';

  int deaths = 0;

  int cases = 0;

  getCountries() async {
    var response1 = await Dio().get('https://corona.lmao.ninja/all');
    deaths = response1.data['deaths'];
    cases = response1.data['cases'];
    mr = ((deaths / cases) * 100).toString();
    if (mr.length > 4) {
      mr = mr.substring(0, 5);
    }
    return mr;
  }

  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: false);
    } else {
      // print("cant Launch url $url");
    }
  }

  @override
  void initState() {
    getCountries().then((data) => {
          setState(() => {mr1 = data})
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // mr1 = getCountries();
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: new AppBar(title: new Text("About Corona Virus")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 7.0, bottom: 10.0),
                child: Text(
                  "Overview",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "The COVID-19 virus spreads primarily through droplets of saliva or discharge from the nose when an infected person coughs or sneezes, so it’s important that you also practice respiratory etiquette (for example, by coughing into a flexed elbow).",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "At this time, there are no specific vaccines or treatments for COVID-19. However, there are many ongoing clinical trials evaluating potential treatments. WHO will continue to provide updated information as soon as clinical findings become available.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text("Mortality Rate: " + '$mr' + '%',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Text(
                          "A mortality rate refers to the percentage of people who die in a given scenario. A high mortality rate signifies a lot of people died",
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.left),
                    ),
                    Wrap(
                      alignment: WrapAlignment.end,
                      children: <Widget>[
                        Text(
                          "What to Know more about virus",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                            child: new Text('  Click here',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                            onTap: () {
                              launchURL(
                                  'https://www.worldometers.info/coronavirus/country/india/');
                            }),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.0, bottom: 10.0, top: 10.0),
                child: Text(
                  "Symptoms",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "The COVID-19 virus affects different people in different ways.  COVID-19 is a respiratory disease and most infected people will develop mild to moderate symptoms and recover without requiring special treatment.  People who have underlying medical conditions and those over 60 years old have a higher risk of developing severe disease and death.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 2),
                      child: Text("Common symptoms include:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, left: 5),
                      child: Text("fever",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, left: 5),
                      child: Text("tiredness.                           ",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, left: 5),
                      child: Text("dry cough.                           ",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 2),
                      child: Text("Other symptoms include:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, left: 5),
                      child: Text("shortness of breath.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, left: 5),
                      child: Text("aches and pains.                           ",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, left: 5),
                      child: Text("sore throat.                           ",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, left: 5),
                      child: Text(
                          "and very few people will report diarrhoea, nausea or a runny nose.                           ",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 2),
                      child: Text(
                          "People may be sick with the virus for 1 to 14 days before developing symptoms.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 2),
                      child: Text(
                          "Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment.  Older people, and those with underlying medical problems like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to develop serious illness.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4, top: 10),
                      child: Text(
                          "People with mild symptoms who are otherwise healthy should self-isolate and contact their medical provider or a COVID-19 information line for advice on testing and referral.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Text(
                          "People with fever, cough or difficulty breathing should call their doctor and seek medical attention.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
