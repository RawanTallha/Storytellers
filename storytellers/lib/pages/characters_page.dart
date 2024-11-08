import 'package:flutter/material.dart';
import 'package:storytellers/card/character_card.dart';
import 'package:storytellers/pages/generate_story_page.dart';

class CharPage extends StatefulWidget {
  const CharPage({super.key});

  @override
  State<CharPage> createState() => _CharPageState();
}

class _CharPageState extends State<CharPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'اختر مغامرتك',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // Using a Column to stack the header and GridView without overlap issues
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/generate-wallpaper (2).png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(185, 41, 23, 101),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                height: 60,
                child: Text(
                  'اختر ابطالك و ابدأ قصة جديدة',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(10.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  CharacterCard(
                      characterName: 'Prince',
                      charcterImagePath: 'lib/assets/character/prince.png'),
                  CharacterCard(
                      characterName: 'Prince',
                      charcterImagePath: 'lib/assets/character/prince.png'),
                  CharacterCard(
                      characterName: 'Princess',
                      charcterImagePath:
                          'lib/assets/character/princess-yellow.png'),
                  CharacterCard(
                      characterName: 'Princess',
                      charcterImagePath: 'lib/assets/character/princess.png'),
                  CharacterCard(
                      characterName: 'Princess',
                      charcterImagePath:
                          'lib/assets/character/stupid-apple.png'),
                  CharacterCard(
                      characterName: 'TinkerBell',
                      charcterImagePath:
                          'lib/assets/character/tinker-bell.png'),
                  CharacterCard(
                      characterName: 'Pirate',
                      charcterImagePath: 'lib/assets/character/pirate.png'),
                  CharacterCard(
                      characterName: 'Princess',
                      charcterImagePath:
                          'lib/assets/character/princess-hair.png'),
                  CharacterCard(
                      characterName: 'Princess?',
                      charcterImagePath: 'lib/assets/character/red-hood.png'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GenerateStory(); // Ensure this matches the constructor of your HomePage
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
          ],
        ),
      ),
    );
  }
}
