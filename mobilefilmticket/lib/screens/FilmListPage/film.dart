import 'package:flutter/material.dart';
import 'package:mobilefilmticket/screens/FilmListPage/components/popular_actors.dart';
import 'package:mobilefilmticket/screens/FilmListPage/components/popular_categories.dart';

class FilmPage extends StatelessWidget {
  const FilmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 35, 35, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "What are you interested in?",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Select some topics to follow to personalize your experience.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const PopularCategories(),  // Sử dụng component GenreButtonsSection
              const SizedBox(height: 20),
              const PopularActors(),  // Sử dụng component PopularActors
            ],
          ),
        ),
      ),
    );
  }
}
