import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/sign_in.dart';

class RegistrationDetails extends StatelessWidget {
  const RegistrationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1.0),
      appBar: AppBar(
        //elevation: 0,
        backgroundColor: Colors.redAccent,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),

        // leading: IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return HomeView();}));}, icon: Icon(Icons.arrow_back), color: Colors.black,),
        title: const Text(
          'Registration Details',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w800, color: Colors.white),
        ),
      ),
      body: Form(
        child: ListView(padding: EdgeInsets.all(15), children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "First Name:",
              hintText: "Enter first name",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Middle Name:",
              hintText: "Enter middle name",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Last Name:",
              hintText: "Enter last name",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Country:",
              hintText: "Choose your country",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Region:",
              hintText: "Enter your region",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "District:",
              hintText: "Enter your district",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Telephone Number:",
              hintText: "Enter phone number",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
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
                      labelText: "Date of Birth:",
                      hintText: "Please enter your date of birth",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Tell us a little about yourself (optional)",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 15,
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
