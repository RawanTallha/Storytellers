import 'package:flutter/material.dart';
import 'package:storytellers/card/picked_genre_card.dart';
import 'package:storytellers/pages/characters_page.dart';

class PickGenrePage extends StatefulWidget {
  const PickGenrePage({super.key});

  @override
  State<PickGenrePage> createState() => _PickGenrePageState();
}

class _PickGenrePageState extends State<PickGenrePage> {
  int? selectedGenreIndex;

  void _onGenreTap(int index) {
    setState(() {
      selectedGenreIndex = index;
    });
  }

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
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/generate-wallpaper (2).png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: ListView(
                children: [
                  const SizedBox(height: 20),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Genre cards with single-selection behavior
                  PickedGenreCard(
                    iconImagePath: 'lib/assets/poet.png',
                    name: 'شعرية',
                    isSelected: selectedGenreIndex == 0,
                    onTap: () => _onGenreTap(0),
                  ),
                  PickedGenreCard(
                    iconImagePath: 'lib/assets/storytelling.png',
                    name: 'سردية',
                    isSelected: selectedGenreIndex == 1,
                    onTap: () => _onGenreTap(1),
                  ),
                  PickedGenreCard(
                    iconImagePath: 'lib/assets/conversation.png',
                    name: 'حوارية',
                    isSelected: selectedGenreIndex == 2,
                    onTap: () => _onGenreTap(2),
                  ),

                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CharPage();
                      }));
                    },
                    child: const Text(
                      'التالي',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(224, 255, 177, 81),
                      minimumSize: const Size(10, 50),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
