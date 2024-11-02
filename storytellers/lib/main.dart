import 'package:flutter/material.dart';
import 'package:storytellers/pages/generate_story_page.dart';
import 'package:storytellers/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      //home: services_page(title: 'money talks'),
      //home: history_page(),
      home: GenerateStory(),
    );
  }
}
