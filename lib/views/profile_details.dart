import 'dart:ui';

import 'package:flutter/material.dart';


class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Color.fromARGB(255, 6, 35, 85),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.redAccent),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfileDetails()));
            },
            icon: Icon(Icons.arrow_back)),
        title: const Text(
          "My Profile",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(radius: 60, backgroundImage: NetworkImage('')),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Mary Ann',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
          ),
          Center(
            child: Text(
              'Tarkwa,Western Region, Ghana',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.1),
            child: Column(children: [
              ListTile(
                title: Text(
                  'Mobile',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
                subtitle: Text(
                  '+233242221300',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  TextButton(onPressed: () {}, child: const Icon(Icons.call)),
                  TextButton(onPressed: () {}, child: const Icon(Icons.call))
                ]),
              ),
              ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'maryann@gmail.com',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  TextButton(onPressed: () {}, child: const Icon(Icons.email))
                ]),
              ),
              ListTile(
                title: Text(
                  'ID',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'WRT4006544',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Icon((Icons.email)))
                  ],
                ),
              ),
              ListTile(
                title: Text('WhatsApp'),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
