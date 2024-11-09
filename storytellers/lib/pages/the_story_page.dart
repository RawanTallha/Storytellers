import 'package:flutter/material.dart';

class TheStoryPage extends StatelessWidget {
  final String story;

  TheStoryPage({required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("قصتك"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "lib/assets/sub-page.png"), // Make sure this path matches your assets folder
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(187, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    story,
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 44, 8, 75)),
                    textAlign:
                        TextAlign.right, // Aligns text to the right for Arabic
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
