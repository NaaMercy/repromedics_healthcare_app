import 'package:flutter/material.dart';
import 'package:repromedics_healthcare_app/views/reproductive_health.dart';
import 'package:repromedics_healthcare_app/views/mental_health.dart';
import 'package:repromedics_healthcare_app/views/community_view.dart';
import 'package:repromedics_healthcare_app/views/book_appointment.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var titlelist = ["Book Appoinment", "Library", "Forums", "Quizzes and Fun"];
  var descList = [
    "Book appointment with a doctor or counsellor.",
    "Have access to information about your reproductive and mental health.",
    "Let's talk about any topic,",
    "Test your understanding about these topics."
  ];
  var imgList = [
    "assets/images/BookAppointment.jpg",
    "assets/images/Library.jpg",
    "assets/images/forum.jpg",
    "assets/images/Quizzes.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    double width = MediaQuery.of(context).size.width * 0.6;
    // var _selectedIndex;
    // var _onItemTapped;

    return Scaffold(
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
      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showDialogFunc(
                    context, imgList[index], titlelist[index], descList[index]);
              },
              child: Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(imgList[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            titlelist[index],
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            child: Text(
                              descList[index],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[500],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
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

showDialogFunc(context, img, title, desc) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      img,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(title,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              )),
        );
      });
}
