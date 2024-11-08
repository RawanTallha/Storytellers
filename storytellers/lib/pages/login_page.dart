import 'package:flutter/material.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/nav_bar_page.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('', style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent, // Makes the AppBar transparent
        elevation: 0, // Removes shadow
        iconTheme: const IconThemeData(
            color: Colors.black), // Changes icon color if needed
      ),
      extendBodyBehindAppBar: true, // Allows content to go behind the AppBar
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/login-wallpaper.png', // Ensure this path is correct
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Centered "Continue" button at the bottom
          Positioned(
            bottom: 100, // Position from the bottom
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyBottomNavigationBar()),
                  );
                },
                child: const Text('متابعة'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
