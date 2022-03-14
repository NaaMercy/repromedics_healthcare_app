import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/homeview.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        // elevation: 15,
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                onPressed: () {}, child: Icon(Icons.arrow_back_outlined)),
          ],
        ),

        title: Text('Communities'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://image.shutterstock.com/image-photo/patient-having-consultation-female-doctor-260nw-534962014.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(padding: EdgeInsets.all(40), children: [
        Container(
          height: 80,
          child: Card(
            color: Colors.blueGrey,
            child: ListTile(
              title: Text(
                'Reproductive Health',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: 80,
          child: Card(
            color: Colors.blueGrey,
            child: ListTile(
              title: Text(
                'Mental Health',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: 80,
          child: Card(
            color: Colors.blueGrey,
            child: ListTile(
              title: Text(
                'Drugs/Addictions',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: 80,
          child: Card(
            color: Colors.blueGrey,
            child: ListTile(
              title: Text(
                'Others',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
