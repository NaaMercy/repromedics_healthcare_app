import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/HomeView.dart';
import 'package:repromedics_healthcare_app/views/MenuBar.dart';
import 'package:repromedics_healthcare_app/views/sign_in.dart';
import 'package:repromedics_healthcare_app/views/reproductive_health.dart';
import 'package:repromedics_healthcare_app/views/registration.dart';
import 'package:repromedics_healthcare_app/views/profile_details.dart';
import 'package:repromedics_healthcare_app/views/mental_health.dart';
import 'package:repromedics_healthcare_app/views/doctor_appointment_details.dart';
import 'package:repromedics_healthcare_app/views/counsellor_appointment_details.dart';
import 'package:repromedics_healthcare_app/views/Community_View.dart';
import 'package:repromedics_healthcare_app/views/HomeView.dart';
import 'package:repromedics_healthcare_app/views/book_appointment.dart';
import 'package:repromedics_healthcare_app/views/aboutDoctor.dart';

void main() {
  runApp(const ReproMedicsApp());
}

class ReproMedicsApp extends StatelessWidget {
  const ReproMedicsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var snapshot2 = null;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReproMedics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuBar(),
    );
  }
}
