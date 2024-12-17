import 'package:flutter/material.dart';

class FilmPage extends StatelessWidget {
  const FilmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      body: Center(
        child: Text(
          "This is a film Page",
          style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent),
        ),
      ),
    );
  }
}