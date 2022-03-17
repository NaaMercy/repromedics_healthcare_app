import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/book_appointment.dart';

class CounsellorAppointmentDetail extends StatelessWidget {
  const CounsellorAppointmentDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1.0),
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

        title: Text('Counsellor Appointment'),
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
      body: Form(
        child: ListView(padding: EdgeInsets.all(15), children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Whatever you say in here, stays in here!",
            ),
          ),
          SizedBox(
            height: 0,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Choose Region",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Choose District",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Choose Mode of Meeting",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
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
                    decoration: InputDecoration(
                      labelText: "Date of meeting:",
                      hintText: "Please enter a date",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Expanded(
                  child: TextFormField(
                    onTap: () {
                      showTimePicker(
                          context: context, initialTime: TimeOfDay.now());
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Time of Meeting:",
                      hintText: "Please enter time",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
              ]),
          SizedBox(
            height: 130,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Vivid description of appointment",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Book Appointment",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.redAccent,
              )),
        ]),
      ),
    );
  }
}
