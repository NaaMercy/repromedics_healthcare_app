import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Mary Ann"),
            accountEmail: Text("maryann@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/profile.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(64, 131, 159, 1),
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1489549132488-d00b7eee80f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJhY2tncm91bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text("Inbox"),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Color.fromRGBO(64, 131, 159, 1),
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '13',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.outbox),
            title: Text("Outbox"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.security_outlined),
            title: Text("Ghana Police Service"),
            onTap: () => null,
            trailing: Container(
              color: Color.fromRGBO(64, 131, 159, 1),
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  '13',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.emergency_outlined),
            title: Text("Ambulance Service"),
            onTap: () => null,
            trailing: Container(
              color: Color.fromRGBO(64, 131, 159, 1),
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  '13',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.fire_extinguisher),
            title: Text("Ghana Fire Service"),
            onTap: () => null,
            trailing: Container(
              color: Color.fromRGBO(64, 131, 159, 1),
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  '13',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.social_distance_outlined),
            title: Text("DOVVSU"),
            onTap: () => null,
            trailing: Container(
              color: Color.fromRGBO(64, 131, 159, 1),
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  '13',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.medical_services_outlined),
            title: Text("Nearby Doctor"),
            onTap: () => null,
            trailing: Container(
              color: Color.fromRGBO(64, 131, 159, 1),
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  '13',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.insert_invitation_outlined),
            title: Text("Invite a friend"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text("Log Out"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
