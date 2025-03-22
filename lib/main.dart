import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// Splash Screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/uth_logo.png', height: 100),
            SizedBox(height: 20),
            Text(
              'UTH SmartTasks',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

// Onboarding Screen với TabBar
class OnboardingScreen extends StatelessWidget {
  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/onboarding1.png",
      "title": "Easy Time Management",
      "description": "Manage your tasks easily and prioritize your work effectively."
    },
    {
      "image": "assets/images/onboarding2.png",
      "title": "Increase Work Effectiveness",
      "description": "Optimize your work with better planning and execution."
    },
    {
      "image": "assets/images/onboarding3.png",
      "title": "Reminder Notification",
      "description": "Never miss an important task with smart reminders."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: onboardingData.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: List.generate(
              onboardingData.length,
                  (index) => Tab(icon: Icon(Icons.circle, size: 10)),
            ),
          ),
        ),
        body: TabBarView(
          children: onboardingData.map((data) {
            return OnboardingContent(
              image: data["image"]!,
              title: data["title"]!,
              description: data["description"]!,
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Widget hiển thị nội dung onboarding
class OnboardingContent extends StatelessWidget {
  final String image, title, description;

  OnboardingContent({required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 200),
        SizedBox(height: 20),
        Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(description, textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}