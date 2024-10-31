import 'dart:ffi';

import 'package:storytellers/pages/history_page.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/services_page.dart';
import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final iconImagePath;
  final String serviceName;
// final pageName;
  final String pageTitle;
  final String buttonText;

// constructor to change icon and service in every card
  ServicesCard({
    required this.iconImagePath,
    required this.serviceName,
    //required this.pageName,
    required this.pageTitle,
    required this.buttonText,
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
                        return services_page(
                          title: 'قصتك',
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
