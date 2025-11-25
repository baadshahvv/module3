import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 250,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          Positioned(
            top: 310,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Mobile App Developer',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
