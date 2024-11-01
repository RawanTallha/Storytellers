// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RecentStoryCard extends StatelessWidget {
  final eventImagePath;
  final String eventOrganizer;

// constructor to change icon and service in every card
  // ignore: prefer_const_constructors_in_immutables
  RecentStoryCard({
    required this.eventImagePath,
    required this.eventOrganizer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Card(
          child: Column(children: [
            // event image/ add
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    eventImagePath, // Allow the image to fill available width
                    fit: BoxFit
                        .cover, // Ensures the image covers the area without distortion
                  )),
            ),

            // event organization (bold)
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                eventOrganizer,
                style: const TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16,
                  color:  Color.fromARGB(255, 59, 18, 129)),
              ),
            ),
          ]),
        ),
      //),
    );
  }
}
