import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/homeview.dart';

class ReproductiveHealth extends StatelessWidget {
  const ReproductiveHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        //elevation:15,
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                onPressed: () {}, child: Icon(Icons.arrow_back_outlined)),
          ],
        ),

        title: Text('Reproductive Health'),
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
      body: ListView(padding: EdgeInsets.all(30), children: [
        Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              'Sexually Transmitted Infections',
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
              'Reproductive Tract Infections',
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
              'Female genital mutilation',
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
              'Cervial Cancer',
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
              'Prostate Cancer',
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
              'Abortion and Contraception',
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
              'Personal Hygiene',
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
              'Adolescents',
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
