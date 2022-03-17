import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/sign_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
        title: Text('Sign Up'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))
        ),
      ),
      body: Form(
        child: ListView(padding: EdgeInsets.all(15), children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Email:",
              hintText: "Enter email address",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Username:",
              hintText: "Enter user ame",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Password:",
              hintText: "Enter Password",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Confirm Password:",
              hintText: "Confirm password",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Telephone Number:",
              hintText: "Enter phone number",
              focusedBorder: UnderlineInputBorder(),
            ),
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
              ]),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Account Type:",
              focusedBorder: UnderlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 10,
            height: 30,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(64, 131, 159, 1),
                )),
          ),
        ]),
      ),
    );
  }
}
