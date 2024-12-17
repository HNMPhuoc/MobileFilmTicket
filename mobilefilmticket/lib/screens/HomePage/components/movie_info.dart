import 'package:flutter/material.dart';

class MovieInfo extends StatelessWidget {
  final Map<String, String> movie;

  const MovieInfo({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Title
        Text(
          movie['title'] ?? 'Unknown Title',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(223, 80, 33, 1),
          ),
        ),
        const SizedBox(height: 10),
        // Genre with "Genre:" in bold and the genres in normal text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Genre: ',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              movie['genre'] ?? 'Unknown Genre',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white, // Genre text in normal font weight
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Duration
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.access_time, color: Colors.white70, size: 18),
            const SizedBox(width: 5),
            Text(
              movie['duration'] ?? 'N/A',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // Description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            movie['description'] ?? 'No description available.',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}