import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String image;
  final bool isActive;

  const MovieCard({
    super.key,
    required this.image,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    double width = isActive ? 250 : 180; // Chiều rộng thay đổi khi ảnh đang hiển thị
    double height = width * 1.4; // Chiều cao tương ứng với chiều rộng, tỉ lệ 3:2

    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 300),
      tween: Tween<double>(begin: isActive ? 0.7 : 1.0, end: isActive ? 1.0 : 0.7), // Điều chỉnh tỉ lệ scale
      builder: (context, scale, child) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 1), // Tăng margin để các ảnh bên cạnh hiện rõ hơn
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Transform.scale(
              scale: scale,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: width, // Kích thước thay đổi khi ảnh đang hiển thị
                height: height, // Chiều cao ảnh
              ),
            ),
          ),
        );
      },
    );
  }
}