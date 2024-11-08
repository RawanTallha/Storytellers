// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storytellers/card/character_card.dart';
import 'package:storytellers/card/picked_genre_card.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/story_page.dart';

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

  String? selectedGenre;
  List<String> Genre = ['قصة حوارية', 'قصة شعرية', 'قصة وصفية'];

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
                  SizedBox(
                    height: 40,
                  ),
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

                  // SizedBox(
                  //   height: 30,
                  // ),
                  // // drop down settings
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color.fromARGB(255, 248, 246, 255),
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //         vertical: 10, horizontal: 20),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: [
                  //         DropdownButton<String>(
                  //           value: selectedLength,
                  //           hint: const Text(
                  //             "طول القصة",
                  //             style: TextStyle(
                  //                 fontSize: 14,
                  //                 color: Color.fromARGB(124, 158, 158, 158)),
                  //           ),
                  //           items: storyLength.map((String item) {
                  //             return DropdownMenuItem<String>(
                  //               value: item,
                  //               child: Text(
                  //                 item,
                  //                 style: TextStyle(
                  //                     color: Color.fromARGB(255, 64, 2, 138)),
                  //               ),
                  //             );
                  //           }).toList(),
                  //           onChanged: (String? newValue) {
                  //             setState(() {
                  //               selectedLength = newValue!;
                  //             });
                  //           },
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         // Dropdown for story genre
                  //         DropdownButton<String>(
                  //           value: selectedGenre,
                  //           hint: const Text(
                  //             "نوع السرد",
                  //             style: TextStyle(
                  //                 fontSize: 14,
                  //                 color: Color.fromARGB(124, 158, 158, 158)),
                  //           ),
                  //           items: Genre.map((String item) {
                  //             return DropdownMenuItem<String>(
                  //               value: item,
                  //               child: Text(
                  //                 item,
                  //                 style: TextStyle(
                  //                     color: Color.fromARGB(255, 64, 2, 138)),
                  //               ),
                  //             );
                  //           }).toList(),
                  //           onChanged: (String? newValue) {
                  //             setState(() {
                  //               selectedGenre = newValue!;
                  //             });
                  //           },
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  // SizedBox(
                  //   height: 200, // Set height for horizontal ListView
                  //   child:
                  //       ListView(scrollDirection: Axis.horizontal, children: [
                  //     generateGenreCard(
                  //         genre: 'قصة حوارية',
                  //         ImagePath: 'lib/assets/storytelling.png'),
                  //     generateGenreCard(
                  //         genre: 'قصة شعرية', ImagePath: 'lib/assets/poet.png'),
                  //     generateGenreCard(
                  //         genre: 'قصة وصفية',
                  //         ImagePath: 'lib/assets/conversation.png'),
                  //   ]),
                  // ),
                  SizedBox(
                    height: 20,
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
                                  hintText: 'مثال...',
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

                  SizedBox(
                    height: 15,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return StoryPage(
                          title: '',
                        ); // Ensure this matches the constructor of your HomePage
                      }));
                    },
                    child: Text(
                      'اكتب القصة',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 226, 174, 84),
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
