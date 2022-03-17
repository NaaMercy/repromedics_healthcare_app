import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/homeview.dart';

class MentalHealth extends StatelessWidget {
  const MentalHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        //elevation:15,
        backgroundColor: Color.fromRGBO(64, 131, 159, 1),
        centerTitle: true,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),

        title: Text('Mental Health'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/profile.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      ),
      body: ListView(padding: EdgeInsets.all(30), children: [
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Anxiety and Obsessive Disorder',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Bullying and Physical Violence',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Eating Disorder/Body Image',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Mood Disorder',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Bipolar Disorder',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Substance Abuse and Addictions',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Suicide',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'HIV AIDS and Mental Health',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          child: ListTile(
            title: Row(children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down),
                color: Colors.black,
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
