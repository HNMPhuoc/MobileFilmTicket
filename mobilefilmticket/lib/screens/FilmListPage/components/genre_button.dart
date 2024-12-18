import 'package:flutter/material.dart';

class GenreButton extends StatelessWidget {
  final String label;

  const GenreButton({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Chiều rộng cố định
      height: 40, // Chiều cao cố định
      decoration: BoxDecoration(
        color: const Color.fromRGBO(35, 35, 35, 1),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.add,
            color: Color.fromRGBO(223, 80, 33, 1),
            size: 16,
          ),
        ],
      ),
    );
  }
}