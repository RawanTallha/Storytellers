// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storytellers/card/recent_story_card.dart';

class RecentStoryPage extends StatelessWidget {
  const RecentStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the app bar
      appBar: AppBar(
        title: const Text(
          'recent stories',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        elevation: 0, // Removes the app bar shadow
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/recent-story-wallpaper.png', // Path to the background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                RecentStoryCard(
                  eventImagePath: 'lib/assets/sleep.png',
                  eventOrganizer: 'sleepy wolf',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
