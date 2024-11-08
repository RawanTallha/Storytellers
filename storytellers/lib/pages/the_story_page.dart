import 'package:flutter/material.dart';

class TheStoryPage extends StatelessWidget {
  final String story;

  TheStoryPage({required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generated Story"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          story,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.right, // Aligns text to the right for Arabic
        ),
      ),
    );
  }
}
