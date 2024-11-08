import 'package:flutter/material.dart';

class PickedGenreCard extends StatelessWidget {
  final String iconImagePath;
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  PickedGenreCard({
    required this.iconImagePath,
    required this.name,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 450,
          decoration: BoxDecoration(
            color: Color.fromARGB(202, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromARGB(203, 22, 8, 128),
                    width: 2,
                  ),
                ),
                child: Icon(
                  isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
                  color: isSelected
                      ? Color.fromARGB(203, 22, 8, 128)
                      : Colors.transparent,
                  size: 24,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Image.asset(
                iconImagePath,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class GenreSelectionPage extends StatefulWidget {
  @override
  _GenreSelectionPageState createState() => _GenreSelectionPageState();
}

class _GenreSelectionPageState extends State<GenreSelectionPage> {
  int? selectedGenreIndex;

  final List<Map<String, String>> genres = [
    {"icon": "lib/assets/poet.png", "name": "Genre 1"},
    {"icon": "lib/assets/storytelling.png", "name": "Genre 2"},
    {"icon": "lib/assets/conversation.png", "name": "Genre 3"},
    // Add more genres here
  ];

  void _onGenreTap(int index) {
    setState(() {
      selectedGenreIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Genre")),
      body: ListView.builder(
        itemCount: genres.length,
        itemBuilder: (context, index) {
          return PickedGenreCard(
            iconImagePath: genres[index]["icon"]!,
            name: genres[index]["name"]!,
            isSelected: selectedGenreIndex == index,
            onTap: () => _onGenreTap(index),
          );
        },
      ),
    );
  }
}
