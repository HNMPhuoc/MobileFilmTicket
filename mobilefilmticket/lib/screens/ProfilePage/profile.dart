import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      body: Center(
        child: Text(
          "This is a Profile Page",
          style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent),
        ),
      ),
    );
  }
}