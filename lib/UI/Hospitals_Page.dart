import 'package:flutter/material.dart';

class HospClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        appBar: new AppBar(title: new Text("Hospitals")),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 7.0, bottom: 10.0),
                  child: Text(
                    "List of hospitals and diagnostic labs in India to test for COVID-19",
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
                        child: Text("Delhi",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "All India Institute Medical Sciences (AIIMS).",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "National Centre for Disease Control (NCDC).                           ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 011-22307145",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("MAHARASHTRA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Indira Gandhi Government Medical College, Nagpur.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Kasturba Hospital for Infectious Diseases, Mumbai.                           ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 020-26127394",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("RAJASTHAN",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Sawai Man Singh, Jaipur.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Dr. S.N Medical College, Jodhpur.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Jhalawar Medical College, Jhalawar",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "All India Institute Medical Sciences (AIIMS)",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("SP Med. College, Bikaner.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("RNT Medical College, Udaipur.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 0141-2225624",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("TAMIL NADUTAMIL NADU",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "King's Institute of Preventive Medicine & Research, Chennai.                           ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Government Medical College, Theni",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Tirunelveli Medical College, Tirunelveli",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Govt. Medical college, Thiruvaru. ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 044-29510500",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("UTTAR PRADESH",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("King's George Medical University, Lucknow",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Institute of Medical Sciences, Banaras Hindu University, Varanasi.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Jawaharlal Nehru Medical College, Aligarh",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 18001805145",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("UTTARAKHAND",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Government Medical College, Haldwani.",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("WEST BENGAL",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "National Institute of Cholera and Enteric Diseases, Kolkata",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("IPGMER, Kolkata",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 1800313444222, 03323412600",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("MADHYA PRADESH",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "All India Institute Medical Sciences, Bhopal",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "National Institute of Research in Tribal Health (NIRTH), Jabalpur",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 0755-2527177",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("KERALA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("National Institute of Virology Field Unit",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Govt. Medical College, Thriuvananthapuram",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Govt. Medical College, Kozhikhode",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Govt. Medical College, Thrissur",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 0471-2552056",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("KARNATAKA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Bangalore Medical College & Research Institute, Bangalore  ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "National Institute of Virology Field Unit Bangalore",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Mysore Medical College & Research Institute, Mysore",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Hassan Inst. of Med. Sciences, Hassan",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Shimoga Inst. of Med. Sciences, Shivamogga",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("GUJARAT",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("BJ Medical College, Ahmedabad",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "M.P.Shah Government Medical College, Jamnagar",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("HARYANA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("BPS Govt Medical College, Sonipat",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Pt. B.D. Sharma Post Graduate Inst. of Med. Sciences, Rohtak",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 8558893911",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("HIMACHAL PRADESH",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Indira Gandhi Medical College, Shimla, Himachal Pradesh",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Dr. Rajendra Prasad Govt. Med. College, Kangra, Tanda",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("JAMMU AND KASHMIR",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Sher-e- Kashmir Institute of Medical Sciences, Srinagar  ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Government Medical College, Jammu",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Government Medical College, Srinagar",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 01912520982, 0194-2440283",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("JHARKHAND",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("MGM Medical College, Jamshedpur",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("MEGHALAYA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "NEIGRI of Health and Medical Sciences, Shillong",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 108",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("MANIPUR",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "J N Inst. of Med. Sciences Hospital, Imphal-East, Manipur",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Regional Institute of Medical Sciences, Imphal",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 3852411668",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("ODISHA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Regional Medical Research Center, Bhubaneswar   ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 9439994859",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("PUNJAB",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Government Medical College, Patiala",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Government Medical College, Amritsar",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("PUDUCHERRY",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Jawaharlal Institute of Postgraduate Medical Education & Research, Puducherry",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("TELANGANA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Gandhi Medical College, Secunderabad",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Osmania Medical College, Hyderabad",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("TRIPURA",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Government Medical College, Agartala",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 0381-2315879",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("BIHAR",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Rajendra Memorial Research Institute of Medical Sciences, Patna   ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("CHANDIGARH ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Post Graduate Institute of Medical Education & Research, Chandigarh   ",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 9779558282",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("CHHATTISGARH",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "All India Institute  Medical Sciences, Raipur",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 104",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("ANDAMAN and NICOBAR ISLANDS",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Regional Medical Research Centre, Port Blair, Andaman and Nicobar",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 03192-232102",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("ANDHRA PRADESH",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Sri Venkateswara Institute of Medical Sciences, Tirupati",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Andhra Medical College, Visakhapatnam",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("GMC, Anantapur",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Sidhartha Medical College, Vijayawada",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Rangaraya Medical College, Kakinada",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 0866-2410978",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, top: 7),
                        child: Text("ASSAM",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Gauhati Medical College, Guwahati",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text(
                            "Regional Medical Research Center, Dibrugarh",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Silchar Medical College, Silchar",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Jorhat Medical College, Jorhat",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 5),
                        child: Text("Helpline No. 6913347770",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
