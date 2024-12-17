import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      body: Center(
        child: Text(
          "This is a Favorite Page",
          style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent),
        ),
      ),
    );
  }
}