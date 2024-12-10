import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user_avatar.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Cherno',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Cherno@gmail.com', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
