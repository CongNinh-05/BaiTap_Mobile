import 'package:flutter/material.dart';
import 'profile_screen.dart'; // Import màn hình Profile

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(), // Đặt màn hình Profile làm màn hình chính
    );
  }
}
