import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
  final String charcterImagePath;
  final String characterName;

  CharacterCard({
    required this.charcterImagePath,
    required this.characterName,
  });

  @override
  _CharacterCardState createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  bool isChecked = false; // State variable to track checkbox status

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Card(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      widget.charcterImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    widget.characterName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 59, 18, 129),
                    ),
                  ),
                ),
              ],
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
