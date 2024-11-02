// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storytellers/card/recent_story_card.dart';

class GenerateStory extends StatefulWidget {
  const GenerateStory({super.key});

  @override
  _GenerateStoryState createState() => _GenerateStoryState();
}

class _GenerateStoryState extends State<GenerateStory> {
  // Define the selected value and list of items for the dropdown
  String? selectedLevel;
  List<String> readingLevel = ['مبتدئ', 'متقدم'];

  String? selectedLength;
  List<String> storyLength = ['قصة قصيرة', 'قصة طويلة'];

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
            child: Container(
              child: ListView(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(185, 41, 23, 101),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      height: 60,
                      child: Text(
                        'اختر مغامرتك و ابدأ قصة جديدة',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),

                  SizedBox(
                    height: 30,
                  ),
                  // drop down settings
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 246, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Dropdown for reading level
                          DropdownButton<String>(
                            value: selectedLevel,
                            hint: const Text(
                              "مستوى الصعوبة",
                              style: TextStyle(
                                  color: Color.fromARGB(124, 158, 158, 158)),
                            ),
                            items: readingLevel.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 64, 2, 138)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedLevel = newValue!;
                              });
                            },
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          // Dropdown for story length
                          DropdownButton<String>(
                            value: selectedLength,
                            hint: const Text(
                              "طول القصة",
                              style: TextStyle(
                                  color: Color.fromARGB(124, 158, 158, 158)),
                            ),
                            items: storyLength.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 64, 2, 138)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedLength = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 246, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 300,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          // Align Text and TextField at the top
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'ادخل فكرتك',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 64, 2, 138),
                                ),
                              ),
                              SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'سبايدرمان الدوادمي',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  border: OutlineInputBorder(
                                    // Adds a border around the TextField
                                    borderRadius: BorderRadius.circular(
                                        10), // Rounded corners
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(
                                          255, 59, 15, 155), // Border color
                                      width: 1.5, // Border width
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    // Border when TextField is not focused
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 59, 15, 155),
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // Border when TextField is focused
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 134, 117,
                                          233), // Change color on focus
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          // Place the mic icon at the bottom right
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 59, 15, 155),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'من هم أبطال قصتك؟',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 64, 2, 138),
                            ),
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          // ListView(
                          //   scrollDirection: Axis.horizontal,
                          //   children: [Image.asset('lib/assets/prince.png')],
                          // ),
                          SizedBox(
                            height: 200, // Set height for horizontal ListView
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  RecentStoryCard(
                                    eventImagePath: 'lib/assets/sleep.png',
                                    eventOrganizer: 'sleepy wolf',
                                  ),
                                  Card(
                                    child: Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color:
                                              Color.fromARGB(98, 164, 26, 26),
                                        ),
                                        child: Image.asset(
                                            'lib/assets/sleep.png'
                                            )),
                                  ),

          //                         Expanded(
          //   child: ClipRRect(
          //       borderRadius: BorderRadius.circular(12),
          //       child: Image.asset(
          //         eventImagePath, // Allow the image to fill available width
          //         fit: BoxFit
          //             .cover, // Ensures the image covers the area without distortion
          //       )),
          // ),
                                ]),
                          ),
                        ],
                      ),
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
