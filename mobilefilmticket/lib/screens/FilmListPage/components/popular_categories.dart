// lib/screens/FilmListPage/components/genre_buttons_section.dart
import 'package:flutter/material.dart';
import 'genre_button.dart';  // Import lại GenreButton

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Popular categories",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        // Loại bỏ Expanded và giữ GridView trong Column
        GridView.count(
          crossAxisCount: 3, // 3 cột
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2.5, // Tỉ lệ giữa chiều rộng và chiều cao
          shrinkWrap: true,  // Đảm bảo GridView không chiếm không gian quá lớn
          physics: const NeverScrollableScrollPhysics(),  // Loại bỏ scroll trong GridView
          children: const [
            GenreButton(label: 'Action'),
            GenreButton(label: 'Fantastic'),
            GenreButton(label: 'Drama'),
            GenreButton(label: 'Western'),
            GenreButton(label: 'Detective'),
            GenreButton(label: 'Horror'),
            GenreButton(label: 'Comedy'),
            GenreButton(label: 'Tragedy'),
            GenreButton(label: 'Adventure'),
          ],
        ),
      ],
    );
  }
}
