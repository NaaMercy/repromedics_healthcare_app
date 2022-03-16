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
          Container(
            height: 100,
            color: Color.fromRGBO(64, 131, 159, 1),
            child: Align(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Card(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.email,
                                color: Color.fromRGBO(64, 131, 159, 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Email",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.vpn_key,
                                color: Color.fromRGBO(64, 131, 159, 1),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                              labelText: "Password",
                              enabledBorder: InputBorder.none,
                              labelStyle: const TextStyle(color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                        child: const Text(
                          "FORGOT PASSWORD?",
                          style: TextStyle(color: Colors.red, fontSize: 11),
                        ))),
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
                                  "SIGN IN",
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
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child: const Image(
                          image: AssetImage("assets/images/facebook2.jpg"),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child: const Image(
                          image: AssetImage("assets/images/twitter.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "DON'T HAVE AN ACCOUNT ? ",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      " SIGN UP",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromRGBO(64, 131, 159, 1),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
