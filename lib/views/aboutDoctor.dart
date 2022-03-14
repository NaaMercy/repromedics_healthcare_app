import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor's Information"),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            StreamBuilder(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                    width: width,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return Container(
                  padding: EdgeInsets.all(width * 0.015),
                  width: width,
                  height: height * 0.7,
                  margin: EdgeInsets.only(
                      left: width * 0.05,
                      top: height * 0.05,
                      right: width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dr. Richard Odoom ",
                        style: TextStyle(
                            fontSize: height * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.stars,
                            size: height * 0.03,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            'Spec: Gynacology',
                            style: GoogleFonts.abel(fontSize: height * 0.025),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.health_and_safety_sharp,
                              size: height * 0.03, color: Colors.red),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            'Designated Hospital: Apinto Govt Hospital',
                            style: GoogleFonts.abel(fontSize: height * 0.025),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.phone,
                              size: height * 0.03, color: Colors.blue),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            'Phone: 0541148245',
                            style: GoogleFonts.abel(fontSize: height * 0.025),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.email,
                              size: height * 0.03, color: Colors.green),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            'emai: danso@gmail.com',
                            style: GoogleFonts.abel(fontSize: height * 0.025),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'About: ',
                            style: TextStyle(
                                fontSize: height * 0.025,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black38)),
                            padding: EdgeInsets.all(5),
                            height: height * 0.3,
                            width: width,
                            child: ListView(
                              children: <Widget>[
                                Text(
                                  'I am personable, great listener, and empathetic to the concerns of my patients.',
                                  style: GoogleFonts.abel(
                                      fontSize: height * 0.025),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
