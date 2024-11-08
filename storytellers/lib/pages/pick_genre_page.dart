// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storytellers/card/generate_genre_card.dart';
import 'package:storytellers/pages/characters_page.dart';
import 'package:storytellers/pages/generate_story_page.dart';
import 'package:storytellers/pages/home_page.dart';

class PickGenrePage extends StatefulWidget {
  const PickGenrePage({super.key});

  @override
  State<PickGenrePage> createState() => _PickGenrePageState();
}

class _PickGenrePageState extends State<PickGenrePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the app bar
      appBar: AppBar(
        title: const Text(
          'اختر مغامرتك',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        elevation: 0, // Removes the app bar shadow
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/generate-wallpaper (2).png', // Path to the background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: ListView(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(184, 98, 78, 164),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text(
                              'الخطوة الاولى',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'اختر مغامرتك و ابدأ قصة جديدة',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )),

                  SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Card(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 142, 183, 255),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            'lib/assets/storytelling.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'قصة وصفية',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Checkbox at the top-right corner
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                    activeColor: Color.fromARGB(255, 59, 18,
                                        129), // Set checkbox color when checked
                                    checkColor:
                                        Colors.white, // Color of check mark
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Card(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 111, 206, 149),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            'lib/assets/conversation.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'قصة حوارية',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Checkbox at the top-right corner
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                    activeColor: Color.fromARGB(255, 59, 18,
                                        129), // Set checkbox color when checked
                                    checkColor:
                                        Colors.white, // Color of check mark
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Card(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 238, 161, 246),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            'lib/assets/poet.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'قصة شعرية',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Checkbox at the top-right corner
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                    activeColor: Color.fromARGB(255, 59, 18,
                                        129), // Set checkbox color when checked
                                    checkColor:
                                        Colors.white, // Color of check mark
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 180,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CharPage(); // Ensure this matches the constructor of your HomePage
                      }));
                    },
                    child: Text(
                      'التالي',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(224, 255, 177, 81),
                      minimumSize: Size(10, 50), // Set the width and height
                    ),
                  ),
                  // You can add more widgets here as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
