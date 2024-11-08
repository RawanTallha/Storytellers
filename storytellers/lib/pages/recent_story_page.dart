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
          'المكتبة الصغيرة',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        elevation: 0, // Removes the app bar shadow
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/library-wallpaper.png',
            //'lib/assets/recent-story-wallpaper.png', // Path to the background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Main content

          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: Container(
                height: 300, // Set height for horizontal ListView
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    RecentStoryCard(
                      eventImagePath: 'lib/assets/sleep.png',
                      eventOrganizer: 'الذئب النائم',
                    ),
                    RecentStoryCard(
                      eventImagePath: 'lib/assets/birdwatching.png',
                      eventOrganizer: 'عالم الطيور',
                    ),
                    RecentStoryCard(
                      eventImagePath: 'lib/assets/simpathy.jpg',
                      eventOrganizer: 'الكلب اللطيف',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
