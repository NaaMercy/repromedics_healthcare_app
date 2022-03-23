import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/reproductive_health.dart';
import 'package:repromedics_healthcare_app/views/mental_health.dart';
import 'package:repromedics_healthcare_app/views/Library.dart';
import 'package:repromedics_healthcare_app/views/book_appointment.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
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

        title: Text('Repromedics'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://image.shutterstock.com/image-photo/patient-having-consultation-female-doctor-260nw-534962014.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Search...",
      hintStyle: TextStyle(color: Colors.grey.shade600),
      prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
      filled: true,
      fillColor: Colors.grey.shade100,
      contentPadding: EdgeInsets.all(8),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
              color: Colors.grey.shade100
          )
          ),
    ),
  ),),
          Container(
            height: 80,
            // decoration: BoxDecoration(
            //   color: Colors.white70,
            //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
            // ),

            child: Card(
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              elevation: 16,
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(''),
                    ),
                    title: Text(
                      'Book Appointment',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 80,
            child: Card(
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              elevation: 16,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(''),
                  ),
                  title: Text(
                    'Communities',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 80,
            child: Card(
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              elevation: 16,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(''),
                  ),
                  title: Text(
                    'Library',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
              height: 80,
              child: Card(
                color: Colors.white,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                elevation: 16,
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(''),
                    ),
                    title: Text(
                      'Quizzes and Games',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ))
        
      ]),
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

padding(EdgeInsets edgeInsets, {required TextField child}) {}
