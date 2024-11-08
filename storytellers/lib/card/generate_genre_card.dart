import 'package:flutter/material.dart';

class generateGenreCard extends StatefulWidget {
  final String ImagePath;
  final String genre;

  generateGenreCard({
    required this.ImagePath,
    required this.genre,
  });

  @override
  State<generateGenreCard> createState() => _generateGenreCardState();
}

class _generateGenreCardState extends State<generateGenreCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Card(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 142, 183, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      widget.ImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      widget.genre,
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
                activeColor: Color.fromARGB(
                    255, 59, 18, 129), // Set checkbox color when checked
                checkColor: Colors.white, // Color of check mark
              ),
            ),
          ],
        ),
      ),
    );
  }
}
