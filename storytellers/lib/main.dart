import 'package:flutter/material.dart';
import 'package:storytellers/pages/generate_story_page.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/story_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      //home: GenerateStory(),
      home: StoryPage(title: 'Story Page'),
    );
  }
}
