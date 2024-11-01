import 'package:flutter/material.dart';

class GenerateStory extends StatelessWidget {
  const GenerateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the app bar
      appBar: AppBar(
        title: const Text(
          'اكتب قصتك',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        elevation: 0, // Removes the app bar shadow
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/generate-wallpaper.png', // Path to the background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Main content

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(child: Image.asset('lib/assets/example.jpg')),
          ),

          
        ],
      ),
    );
  }
}
