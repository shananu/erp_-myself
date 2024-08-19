import 'package:flutter/material.dart';
import '../screens/convocation_registration_page.dart';
//import '../screens/feedback_page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Vedanshi Mishra'),
            accountEmail: Text('vedanshi@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          ListTile(
            title: Text('Dashboard'),
            leading: Icon(Icons.dashboard),
            onTap: () {},
          ),
          ExpansionTile(
            title: Text('Convocation'),
            leading: Icon(Icons.school),
            children: <Widget>[
              ListTile(
                title: Text('Convocation Registration'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConvocationRegistrationPage()),
                  );
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('My Profile'),
            leading: Icon(Icons.person),
            children: <Widget>[
              ListTile(
                title: Text('Personal Information'),
                onTap: () {},
              ),
            ],
          ),
          // Add other drawer items similarly...
        ],
      ),
    );
  }
}
