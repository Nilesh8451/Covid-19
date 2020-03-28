import 'package:flutter/material.dart';

class PreCauClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: new AppBar(title: new Text("Precautions")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 7.0, bottom: 10.0),
                child: Text(
                  "10 ways to make sure you do not catch the disease",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
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
                          "1. Avoid close contact with people who are sick. Maintain at least three feet distance between yourself and anyone who is coughing or sneezing.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "2. Avoid touching your eyes, nose, and mouth.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "3. Stay home when you are sick.                           ",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "4. Cover your cough or sneeze with a tissue, then dispose of the tissue safely.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "5. Clean and disinfect frequently-touched objects and surfaces using a regular household cleaning spray or wipe.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "6. Wearing a mask is not necessary unless you are taking care of an infected person. The Centers for Disease Control (CDC) does recommend that only infected people wear masks to prevent the spread of the virus.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "7. Wash your hands often with soap and water for at least 20 seconds, especially after going to the bathroom, before eating, and after blowing your nose, coughing, or sneezing. ",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "8. If soap and water are not readily available, use an alcohol-based hand sanitiser with at least 60% alcohol. Always wash hands with soap and water when hands are visibly dirty.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "9. If you have a fever, cough and difficulty breathing, seek medical attention immediately.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                          "10. Keep in mind the travel advisory set out by the Ministry of Health and Welfare.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.0, bottom: 10.0, top: 8.0),
                child: Center(
                  child: Text(
                    "Stay Safe",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
