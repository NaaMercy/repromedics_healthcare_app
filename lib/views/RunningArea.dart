import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RunningArea extends StatelessWidget {
  const RunningArea({Key? key}) : super(key: key);

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100,
                color: const Color.fromRGBO(64, 131, 159, 1),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ListView(
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      CircleAvatar(
                        child: Image(
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                      Row(
                        children: [
                          Column(children: [
                            Text(
                              "David Seth",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            ),
                            Text(
                              "Many thanks to Doctor Naa , she is a professional, competent doctor....",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            ),
                          ])
                        ],
                      ),
                      CircleAvatar(
                        child: Image(
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 40,
                    child: Container(
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.amber,
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              "Book Appoinment",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(64, 131, 159, 1),
                                Color.fromRGBO(64, 131, 159, -100),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
