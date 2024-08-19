import 'package:flutter/material.dart';

class StudentProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Student Profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(),
            ListTile(
              title: Text('University Enrollment No.: 15101182023'),
            ),
            ListTile(
              title: Text('Student Name: Vedanshi Mishra'),
            ),
            ListTile(
              title: Text('Gender: Female'),
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
