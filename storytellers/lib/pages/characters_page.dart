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
              padding: const EdgeInsets.all(20.0),
              child: Container(
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
                        'الخطوة الثانية',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'اختر ابطال قصتك',
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
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(10.0),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  CharacterCard(
                      characterName: 'امير',
                      charcterImagePath: 'lib/assets/character/prince.png'),
                  CharacterCard(
                      characterName: 'اميرة',
                      charcterImagePath:
                          'lib/assets/character/princess-yellow.png'),
                  CharacterCard(
                      characterName: 'اميرة',
                      charcterImagePath: 'lib/assets/character/princess.png'),
                  CharacterCard(
                      characterName: 'اميرة',
                      charcterImagePath:
                          'lib/assets/character/stupid-apple.png'),
                  CharacterCard(
                      characterName: 'قرصان',
                      charcterImagePath: 'lib/assets/character/pirate.png'),
                  CharacterCard(
                      characterName: 'اميرة',
                      charcterImagePath:
                          'lib/assets/character/princess-hair.png'),
                  CharacterCard(
                      characterName: 'اميرة',
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
