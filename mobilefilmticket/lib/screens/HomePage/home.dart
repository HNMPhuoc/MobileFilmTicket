import 'package:flutter/material.dart';
import 'package:mobilefilmticket/screens/HomePage/components/movie_buttons.dart';
import 'package:mobilefilmticket/screens/HomePage/components/movie_card.dart';
import 'package:mobilefilmticket/screens/HomePage/components/movie_header.dart';
import 'package:mobilefilmticket/screens/HomePage/components/movie_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> movies = [
    {
      'image': 'assets/images/halloween_kills.jpg',
      'title': 'Halloween Kills',
      'genre': 'Horror, Thriller',
      'duration': '1h 45m',
      'description':
      'Surviving victims of Michael Myers form a vigilante mob and vow to end his reign of terror.',
    },
    {
      'image': 'assets/images/venom_3.jpg',
      'title': 'Venom 3',
      'genre': 'Action, Sci-Fi',
      'duration': '2h 10m',
      'description':
      'Eddie Brock and Venom continue their chaotic symbiosis as they face new enemies and unexpected allies.',
    },
    {
      'image': 'assets/images/wild_robot.jpg',
      'title': 'The Wild Robot',
      'genre': 'Animation, Adventure',
      'duration': '1h 30m',
      'description':
      'A heartwarming tale of a robot who learns to survive and adapt in a wild environment after being stranded.',
    },
  ];

  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 35, 35, 1),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const MovieHeader(),
            const SizedBox(height: 20),
            SizedBox(
              height: 360,
              child: PageView.builder(
                itemCount: movies.length,
                controller: PageController(
                  initialPage: 1, // Bắt đầu từ trang thứ 2
                  viewportFraction: 0.6, // Giảm viewportFraction để các ảnh gần nhau hơn
                ),
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return MovieCard(
                    image: movies[index]['image']!,
                    isActive: _currentPage == index,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            MovieInfo(movie: movies[_currentPage]),
            const SizedBox(height: 20),
            const MovieButtons(),
          ],
        ),
      ),
    );
  }
}