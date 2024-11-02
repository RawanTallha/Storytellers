// ignore_for_file: unused_import, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last

//import 'dart:ffi';

import 'package:storytellers/pages/generate_story_page.dart';
import 'package:storytellers/pages/recent_story_page.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/story_page.dart';
import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  final iconImagePath;
  final String serviceName;
// final pageName;
  final String pageTitle;

// constructor to change icon and service in every card
  GenreCard({
    required this.iconImagePath,
    required this.serviceName,
    //required this.pageName,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 0), // space between each card
      child: Card(
        child: Container(
          padding: EdgeInsets.all(20),
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
                    serviceName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'اكتب قصه كتكوته لطفلك الكتكوت',
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
                        return GenerateStory(
                        ); // Ensure this matches the constructor of your HomePage
                      }));
                    },
                    child: Text(
                      'اكتب قصتك',
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
              Image.asset(
                iconImagePath,
                height: 100,
                //fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
