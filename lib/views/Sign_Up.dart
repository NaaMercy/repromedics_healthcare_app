import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/HomeView.dart';

import 'package:repromedics_healthcare_app/views/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool agree = false;
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _confirmPasswordVisible = !_confirmPasswordVisible;
    });
  }

  // String dropdownValue = 'User'.toLowerCase();
  // bool _isLoading = false;
  // final OnSelected selected = ((index, instance) {
  //   SnackBar(content: Text('Select $index, toggle ${instance.labels[index]}'));
  // });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(1.0),
        appBar: AppBar(
          //elevation:15,
          backgroundColor: const Color.fromRGBO(64, 131, 159, 1),
          centerTitle: true,
          leading: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const SignIn()));
            },
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
          ),

          title: const Text(
            'Sign Up',
            textAlign: TextAlign.left,
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(70),
          child: Form(
            child: Column(children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Email:",
                  // hintText: "Enter email address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: "Username:",
                  // hintText: "Enter username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color.fromRGBO(64, 131, 159, 1),
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  labelText: 'Password',
                  // hintText: 'Enter password'
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password is required";
                  }
                  if (value.length < 8) {
                    return "Password should be 8 characters long";
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: _confirmPasswordVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _confirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color.fromRGBO(64, 131, 159, 1),
                    ),
                    onPressed: _toggleConfirmPasswordVisibility,
                  ),
                  labelText: 'Confirm Password',
                  // hintText: 'Confirm Password'
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password is required";
                  }
                  if (value.length < 8) {
                    return "Password should be 8 characters long";
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Telephone Number:",
                  // hintText: "Enter phone number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now());
                },
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: "Date of Birth:",
                  // hintText: "Please enter your date of birth",
                  border: OutlineInputBorder(),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeView()));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(padding: EdgeInsets.only(left: 160)),
                  Text("Not a member?"),
                  TextButton(
                    onPressed: () {},
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
