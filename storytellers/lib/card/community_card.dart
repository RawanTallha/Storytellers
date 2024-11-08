// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storytellers/pages/home_page.dart';

class CommunityCard extends StatelessWidget {
  final storyImagePath;
  final String storyTitle;
  final String authorsName;

// constructor to change icon and service in every card
  CommunityCard({
    required this.storyImagePath,
    required this.storyTitle,
    required this.authorsName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 15), // space between each card
      child: Card(
        child: Container(
          height: 160,
          width: 350,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromARGB(99, 255, 255, 255),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    storyTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'اسم الكاتب: $authorsName',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage(); // Ensure this matches the constructor of your HomePage
                      }));
                    },
                    child: Text(
                      'أستكشف القصة',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(224, 255, 177, 81),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      storyImagePath, // Allow the image to fill available width
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
