import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final eventImagePath;
  final String eventOrganizer;

// constructor to change icon and service in every card
  EventCard({
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
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16,
                  color: const Color.fromARGB(255, 59, 18, 129)),
              ),
            ),
          ]),
        ),
      //),
    );
  }
}
