import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/homeview.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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

        title:
            Text('Communities', style: TextStyle(fontWeight: FontWeight.w900)),
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
      body: ListView(padding: EdgeInsets.all(40), children: [
        Container(
          height: 80,
          child: Card(
            color: Colors.white70,
            child: ListTile(
              title: Text(
                'Reproductive Health',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: 80,
          child: Card(
            color: Colors.white70,
            child: ListTile(
              title: Text(
                'Mental Health',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: 80,
          child: Card(
            color: Colors.white70,
            child: ListTile(
              title: Text(
                'Drugs/Addictions',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: 80,
          child: Card(
            color: Colors.white70,
            child: ListTile(
              title: Text(
                'Others',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
          ),
        ),
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
