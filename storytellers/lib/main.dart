import 'package:flutter/material.dart';
import 'package:storytellers/pages/generate_story_page.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/login_page.dart';
import 'package:storytellers/pages/nav_bar_page.dart';
import 'package:storytellers/pages/pick_genre_page.dart';
import 'package:storytellers/pages/story_page.dart';
import 'package:storytellers/pages/welcome_page.dart';

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
      home: LogInPage(),
      //home: MyBottomNavigationBar(),
      //home: WelcomePage(),
      //home: PickGenrePage(),
      //home: GenerateStory(),
      //home: StoryPage(title: 'Story Page'),
    );
  }
}  
