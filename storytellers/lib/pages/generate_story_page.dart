// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
              decoration: BoxDecoration(
                color: Color.fromARGB(169, 134, 117, 233),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                children: [
                  // Image
                  Center(child: Image.asset('lib/assets/example.jpg')),

                  const SizedBox(height: 20),

                  // drop down settings
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 246, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Dropdown for reading level
                        DropdownButton<String>(
                          value: selectedLevel,
                          hint: const Text(
                            "مستوى الصعوبة",
                            //style: TextStyle(color: Colors.white),
                          ),
                          items: readingLevel.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
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
                          hint: const Text("طول القصة"),
                          items: storyLength.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
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
                        child: Column(
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
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'سبايدرمان الدوادمي',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 59, 15, 155),
                                  borderRadius: BorderRadius.circular(90)),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                      )

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
