import 'package:flutter/material.dart';

class AnticipatedMoviesSection extends StatelessWidget {
  const AnticipatedMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tiêu đề "The most anticipated movies of 2024"
        const Text(
          "The most anticipated movies of 2024",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        // ListView hiển thị các hình ảnh cuộn ngang
        const SizedBox(height: 20),
        SizedBox(
          height: 120, // Chiều cao cố định cho ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Cuộn ngang
            itemCount: 5, // Số lượng item (có thể thay đổi)
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Bo tròn nhẹ nếu muốn
                  child: Image.asset(
                    'assets/images/gotg.jpg', // Hình ảnh cần hiển thị
                    fit: BoxFit.cover, // Căn chỉnh ảnh để không bị méo
                    width: MediaQuery.of(context).size.width / 2 - 15, // Tăng chiều rộng ảnh
                    height: 100, // Chiều cao ảnh nhỏ hơn
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
