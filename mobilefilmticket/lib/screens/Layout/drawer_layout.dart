import 'package:flutter/material.dart';

class DrawerLayout extends StatelessWidget {
  const DrawerLayout({super.key});

  void logout() {
    print("Đã đăng xuất");
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(35, 35, 35, 1),
      child: SafeArea(
        child: Column(
          children: [
            // Logo hoặc Header
            SizedBox(
              height: 200, // Tăng chiều cao của SizedBox nếu cần
              child: Center(
                child: Image.asset(
                  'assets/images/logo1.png', // Đường dẫn tới ảnh trong thư mục assets
                  height: 180, // Tăng chiều cao của ảnh
                  width: 180,  // Chiều rộng của ảnh (cân đối)
                  fit: BoxFit.contain, // Đảm bảo ảnh vừa khít và không bị méo
                ),
              ),
            ),
            // Danh sách các mục
            ListTile(
              title: const Text(
                "T R A N G  C H Ủ",
                style: TextStyle(color: Colors.white),
              ),
              leading: const Icon(Icons.home, color: Colors.white),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                "T À I  K H O Ả N",
                style: TextStyle(color: Colors.white),
              ),
              leading: const Icon(Icons.person, color: Colors.white),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                "C À I  Đ Ặ T",
                style: TextStyle(color: Colors.white),
              ),
              leading: const Icon(Icons.settings, color: Colors.white),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Spacer(), // Đẩy mục Đăng Xuất xuống dưới cùng
            // Nút Đăng Xuất
            ListTile(
              title: const Text(
                "Đ Ă N G  X U Ấ T",
                style: TextStyle(color: Colors.white),
              ),
              leading: const Icon(Icons.logout, color: Colors.white),
              onTap: logout,
            ),
          ],
        ),
      ),
    );
  }
}