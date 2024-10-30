import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final eventImagePath;
  final String eventOrganizer;
  final String eventDesc;

// constructor to change icon and service in every card
  EventCard({
    required this.eventImagePath,
    required this.eventOrganizer,
    required this.eventDesc,
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

            SizedBox(height: 15),

            // event organization (bold)
            Text(
              eventOrganizer,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            // event description
            //Text(eventDesc),
          ]),
        ),
      //),
    );
  }
}
