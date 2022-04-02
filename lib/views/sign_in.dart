import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:repromedics_healthcare_app/views/HomeView.dart';
import 'package:repromedics_healthcare_app/views/Sign_Up.dart';
// import 'package:repromedics_healthcare/views/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

AuthButtonType? buttonType;
AuthIconType? iconType;

class _SignInState extends State<SignIn> {
  bool _isLoading = false;
  bool _passwordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              // alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: buildColumn(),
            ),
          ],
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(children: <Widget>[
      const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SizedBox(
            width: 10,
            height: 10,
          ),
        ),
      ),

      const Align(
        alignment: Alignment.center,
        child: Text(
          "REPROMEDICS",
          style: TextStyle(color: Colors.blueGrey, fontSize: 15),
        ),
      ),

      const SizedBox(
        height: 150,
      ),
      Padding(
        //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              icon: Icon(
                Icons.email,
                color: Color.fromRGBO(64, 131, 159, 1),
              ),
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Enter valid email id as abc@gmail.com'),
          validator: (value) {
            if (value!.isEmpty) {
              return "Email is required";
            }
            if (value.length < 8) {
              return "Email is invalid";
            }
          },
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
        //padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          obscureText: _passwordVisible,
          decoration: InputDecoration(
              icon: Icon(
                Icons.vpn_key,
                color: Color.fromRGBO(64, 131, 159, 1),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Color.fromRGBO(64, 131, 159, 1),
                ),
                onPressed: _togglePasswordVisibility,
              ),
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter secure password'),
          validator: (value) {
            if (value!.isEmpty) {
              return "Password is required";
            }
            if (value.length < 8) {
              return "Password should be 8 characters long";
            }
          },
        ),
      ),

      const SizedBox(
        height: 10,
      ),

      TextButton(
        onPressed: () {
          // FORGOT PASSWORD SCREEN GOES HERE
        },
        child: const Align(
          alignment: Alignment.topRight,
          child: Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.blue, fontSize: 13),
          ),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomeView()));
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 12),
          child: Text(
            'Sign In',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 160)),
          Text("Not a member?"),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const SignUp()));
            },
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
      // const SizedBox(
      //   height: 10,
      // ),

      const SizedBox(
        height: 20,
      ),
      const Text(
        "or",
        style: TextStyle(color: Colors.grey),
      ),

      SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            GoogleAuthButton(
              onPressed: () {
                // your implementation
                setState(() {
                  _isLoading = !_isLoading;
                });
              },
            ),
          ],
        ),
      ),

      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
