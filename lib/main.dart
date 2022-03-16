import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repromedics_healthcare_app/views/RunningArea.dart';
import 'package:repromedics_healthcare_app/views/Sign_Up.dart';
import 'package:repromedics_healthcare_app/views/aboutDoctor.dart';

void main() {
  runApp(const ReproMedicsApp());
}

class ReproMedicsApp extends StatelessWidget {
  const ReproMedicsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RunningArea(),
    );
  }
}
