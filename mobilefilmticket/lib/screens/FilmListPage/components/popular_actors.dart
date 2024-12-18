import 'package:flutter/material.dart';

class PopularActors extends StatelessWidget {
  const PopularActors({super.key});

  @override
  Widget build(BuildContext context) {
    // Danh sách các hình ảnh diễn viên
    final List<String> actorImages = [
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
      'assets/images/user.jpg',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Popular actors",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        // Phần hiển thị các avatar của các diễn viên với ListView cuộn ngang
        SizedBox(
          height: 80, // Chiều cao cố định cho ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Cuộn ngang
            itemCount: actorImages.length, // Số lượng diễn viên
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(actorImages[index]), // Sử dụng ảnh từ danh sách
                  backgroundColor: Colors.grey,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}