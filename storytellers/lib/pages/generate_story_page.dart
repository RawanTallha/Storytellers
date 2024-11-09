import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:storytellers/pages/the_story_page.dart';
import 'story_page.dart';

class GenerateStory extends StatefulWidget {
  const GenerateStory({super.key});

  @override
  _GenerateStoryState createState() => _GenerateStoryState();
}

class _GenerateStoryState extends State<GenerateStory> {
  String userIdea = ""; // Variable to store user input from TextField

  // Function to send user input to FastAPI and retrieve generated story
  Future<void> generateStory() async {
    final url = Uri.parse('http://127.0.0.1:8000/generate_story/');
    final data = {'kid_input': userIdea};

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
        "Accept-Charset": "utf-8"
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(utf8.decode(response.bodyBytes));
      final story = responseData['story'];
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TheStoryPage(story: story),
        ),
      );
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'اكتب قصتك',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/generate-wallpaper.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: [
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(184, 98, 78, 164),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  height: 100,
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          'الخطوة الثالثة',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'ادخل فكرتك و ابحر بخيالك',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // User input field with mic icon
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
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
                              SizedBox(height: 20),
                              TextField(
                                onChanged: (value) {
                                  setState(() {
                                    userIdea = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'مثال: اكتب لي قصة عن الصدق',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 59, 15, 155),
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 59, 15, 155),
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 134, 117, 233),
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Place the mic icon at the bottom right
                      SizedBox(
                        height: 300,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 59, 15, 155),
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: IconButton(
                            onPressed: () {
                              // Add mic functionality here
                            },
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
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    generateStory();
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
                    minimumSize: Size(10, 50),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
