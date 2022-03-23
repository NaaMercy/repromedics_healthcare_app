import 'package:flutter/material.dart';

class SexTransDise extends StatefulWidget {
  const SexTransDise({Key? key}) : super(key: key);

  @override
  State<SexTransDise> createState() => _SexTransDiseState();
}

class _SexTransDiseState extends State<SexTransDise> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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

            title: Text('Sexally Transmitted Diseases(STIs)'),
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
          body: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
              children: List.generate(choices.length, (index) {
                return Center(
                  child: SelectCard(choice: choices[index]),
                );
              })),
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
        ));
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

List<Choice> choices = const <Choice>[
  Choice(title: 'Health Tips', icon: Icons.health_and_safety),
  Choice(title: 'Articles', icon: Icons.article_outlined),
  Choice(title: 'Visit Forums', icon: Icons.forum_outlined),
  Choice(title: 'News Room', icon: Icons.newspaper_outlined),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  get textStyle => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Card(
          color: Colors.white70,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Icon(
                    choice.icon,
                    size: 100.0,
                    color: Color.fromRGBO(64, 131, 159, 1),
                  )),
                  Text(
                    choice.title,
                    style: TextStyle(
                      color: Color.fromRGBO(64, 131, 159, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
          )),
    );
  }
}
