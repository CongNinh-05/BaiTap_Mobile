import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/profile.jpeg"),
            ),
            const SizedBox(height: 16),
            const Text(
              "Johan Smith",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            const Text("California, USA"),
          ],
        ),
      ),
    );
  }
}
