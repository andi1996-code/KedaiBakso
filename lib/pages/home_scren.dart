import 'package:cofeeshop/pages/home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Ganti sesuai kebutuhan
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    'lib/assets/meatballs.png', // Ganti dengan path logo kopi Anda
                    height: 100,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Selamat Datang Di Aplikasi \nKedai Bakso",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.brown),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi yang diinginkan saat tombol ditekan
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.brown, // Warna teks tombol
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'Masuk Aplikasi',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.grey[300],
        child: const Center(
          child: Text(
            "© 2023 Andi Prayogo. All rights reserved.",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
