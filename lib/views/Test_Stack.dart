import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestStack extends StatefulWidget {
  const TestStack({Key? key}) : super(key: key);

  //final string title;

  @override
  State<TestStack> createState() => _TestStack();
}

class _TestStack extends State<TestStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      overflow: Overflow.visible,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 6, 42, 71),
              // borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(60),
              //     bottomRight: Radius.circular(60))
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        Icons.more_horiz,
                        size: 40,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Doctor profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        )),
                  ),
                ),
              ],
            )),
        Positioned(
          top: 150,
          left: 15,
          right: 15,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 6, 42, 71).withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Text("Doctor profile",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -300,
          left: 0,
          right: 0,
          child: Container(
              height: 80,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(60),
                  //     bottomRight: Radius.circular(60))
                  ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/doctorprofilemale.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text("David Seth",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/doctorprofile.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
                      ),
                    ],
                  ),
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 16),
                  //     child: Text("Doctor profile",
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 28,
                  //         )),
                  //   ),
                  // ),
                ],
              )),
        ),
      ],
    ));
  }
}
