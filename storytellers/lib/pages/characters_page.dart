import 'package:flutter/material.dart';
import 'package:storytellers/card/character_card.dart';

class CharPage extends StatefulWidget {
  const CharPage({super.key});

  @override
  State<CharPage> createState() => _CharPageState();
}

class _CharPageState extends State<CharPage> {
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
                      )),],),),),


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
          GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
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
                  charcterImagePath: 'lib/assets/character/stupid-apple.png'),
              CharacterCard(
                  characterName: 'TinkerBell',
                  charcterImagePath: 'lib/assets/character/tinker-bell.png'),
              CharacterCard(
                  characterName: 'Pirate',
                  charcterImagePath: 'lib/assets/character/pirate.png'),
              CharacterCard(
                  characterName: 'Princess',
                  charcterImagePath: 'lib/assets/character/princess-hair.png'),
              CharacterCard(
                  characterName: 'Princess?',
                  charcterImagePath: 'lib/assets/character/red-hood.png'),
            ],
          )
        ],
      ),
    );
  }
}
