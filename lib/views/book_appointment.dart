import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/HomeView.dart';
import 'package:repromedics_healthcare_app/views/aboutDoctor.dart';
import 'package:repromedics_healthcare_app/views/doctor_appointment_details.dart';
import 'package:repromedics_healthcare_app/views/counsellor_appointment_details.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// import 'package:toggle_switch/toggle_switch.dart';


class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointment();
}


class _BookAppointment extends State<BookAppointment> {

 
 
  // List<bool> isSelected = [false, true];
  // FocusNode focusNodeButton1 = FocusNode();
  // FocusNode focusNodeButton3 = FocusNode();
  // late List<FocusNode> focusToggle;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   focusToggle = [focusNodeButton1, focusNodeButton3];
  // }

  // @override
  // void dispose() {
  //   // Clean up the focus node when the Form is disposed.
  //   focusNodeButton1.dispose();
  //   focusNodeButton3.dispose();
  //   super.dispose();
  // }

 late List<bool> isSelected;

    @override
    void initState() {
        isSelected = [true, false];
        super.initState();
    }

 late final _ratingController;
  late double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  IconData? _selectedIcon;

  @override
  void initStatee() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    var items;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        //elevation:15,
        backgroundColor: const Color.fromRGBO(64, 131, 159, 1),
        centerTitle: true,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomeView()));
              },
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),

        title: const Text('Book Appointment'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://image.shutterstock.com/image-photo/patient-having-consultation-female-doctor-260nw-534962014.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
        //    Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       ToggleButtons(
        //         color: Colors.black,
        //         selectedColor: Colors.black,
        //         // fillColor: Colors.purple,
        //         // splashColor: Colors.lightBlue,
        //         highlightColor: Colors.blueGrey,
        //         borderColor: Colors.black,
        //         borderWidth: 1,
        //         selectedBorderColor: Colors.blue,
        //         renderBorder: true,
        //         borderRadius: BorderRadius.circular(20),
        //         focusNodes: focusToggle,
        //         children: const <Widget>[
        //           Text('  Doctor  '),
        //           Text('Counsellor'),
        //         ],
        //         isSelected: isSelected,
        //         onPressed: (int index) {
        //           setState(() {
        //             isSelected[index] = !isSelected[index];
        //           });
        //         },
        //       ),
        //     ],
        //   ),
        // ),
      
       Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
                ToggleButtons(
                borderColor: Colors.black,
                fillColor: Colors.blueGrey,
                borderWidth: 0.5,
                selectedBorderColor: Colors.black,
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(20),
                children: const <Widget>[
                    Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        '  Doctor  ',
                        style: TextStyle(fontSize: 13),
                    ),
                    ),
                    Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'Counsellor',
                        style: TextStyle(fontSize: 13),
                    ),
                    ),
                ],
                onPressed: (int index) {
                    setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                    }
                    });
                },
                isSelected: isSelected,
                ),
            ],
            ),
        ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: Colors.white.withOpacity(0.1),
            child: Column(children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
                title: const Text(
                  'Dr. Mercy Adoley Quaye',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
                subtitle: const Text(
                  'Surgeon @ Apinto Govt Hospital',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 20,
                          width: 90,
                          decoration: BoxDecoration(
                              color:  Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            onPressed: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (_) => const AboutDoctor()));
                             },
                            child: const Icon(
                                    Icons.star_rate_outlined,
                                    color: Colors.blueGrey
                                  ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(64, 131, 159, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const AboutDoctor()));
                            },
                            child: const Text(
                              'Book',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(64, 131, 159, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(64, 131, 159, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
            label: 'Message',
            backgroundColor: Color.fromRGBO(64, 131, 159, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
            backgroundColor: Color.fromRGBO(64, 131, 159, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More options',
            backgroundColor: Color.fromRGBO(64, 131, 159, 1),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
