import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:repromedics_healthcare_app/views/book_appointment.dart';

class DoctorAppointmentDetail extends StatefulWidget {
  const DoctorAppointmentDetail({Key? key}) : super(key: key);

  @override
  State<DoctorAppointmentDetail> createState() =>
      _DoctorAppointmentDetailState();
}

class _DoctorAppointmentDetailState extends State<DoctorAppointmentDetail> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1.0),
      appBar: AppBar(
        //elevation:15,
        backgroundColor: const Color.fromRGBO(64, 131, 159, 1),
        centerTitle: true,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),

        title: const Text('Doctor Appointment'),
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      body: Form(
        child: ListView(padding: const EdgeInsets.all(15), children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: "Whatever you say in here, stays in here!",
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Choose Region",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Choose District",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Choose Mode of Meeting",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: TextFormField(
                    onTap: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now());
                    },
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Date of meeting:",
                      hintText: "Please enter a date",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                Expanded(
                  child: TextFormField(
                    onTap: () {
                      showTimePicker(
                          context: context, initialTime: TimeOfDay.now());
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Time of Meeting:",
                      hintText: "Please enter time",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
              ]),
          const SizedBox(
            height: 130,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "Vivid description of appointment",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Book Appointment",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(64, 131, 159, 1),
              )),
        ]),
      ),
    );
  }
}
