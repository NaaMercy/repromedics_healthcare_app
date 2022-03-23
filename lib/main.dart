import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repromedics_healthcare_app/services/post.dart';
import 'package:repromedics_healthcare_app/views/Forums.dart';
import 'package:repromedics_healthcare_app/views/RunningArea.dart';
import 'package:repromedics_healthcare_app/views/Sexually_Trans_Diseases.dart';
import 'package:repromedics_healthcare_app/views/Sign_Up.dart';
import 'package:repromedics_healthcare_app/views/aboutDoctor.dart';
import 'package:repromedics_healthcare_app/views/Library.dart';
import 'package:repromedics_healthcare_app/views/doctor_appointment_details.dart';
import 'package:repromedics_healthcare_app/views/Test_Stack.dart';
import 'package:repromedics_healthcare_app/views/mental_health.dart';
import 'package:repromedics_healthcare_app/views/reproductive_health.dart';
import 'package:repromedics_healthcare_app/views/sign_in.dart';

void main() {
  runApp(const ReproMedicsApp());
}

class ReproMedicsApp extends StatelessWidget {
  const ReproMedicsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostsPage(),
    );
  }
}