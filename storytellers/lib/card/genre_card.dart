// ignore_for_file: unused_import, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

//import 'dart:ffi';

import 'package:storytellers/pages/generate_story_page.dart';
import 'package:storytellers/pages/pick_genre_page.dart';
import 'package:storytellers/pages/recent_story_page.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/story_page.dart';
import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  final iconImagePath;
  final String serviceName;
  final String pageTitle;

// constructor to change icon and service in every card
  GenreCard({
    required this.iconImagePath,
    required this.serviceName,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 0), // space between each card
      child: Card(
        child: Container(
          padding: EdgeInsets.all(5),
          height: 280,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromARGB(97, 241, 237, 237),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    iconImagePath,
                    height: 150,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Text(
                    serviceName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromARGB(255, 60, 15, 127),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PickGenrePage(); // Ensure this matches the constructor of your HomePage
                      }));
                    },
                    child: Text(
                      'يلا نبدأ الحكاية',
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
            ],
          ),
        ),
      ),
    );
  }
}
