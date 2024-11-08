// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            // Background image
            Image.asset(
              'lib/assets/sub-page.png', // Path to the background image
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            // Main content
            SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'lets get started',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 87, 31, 166)),
                      ),
                      Text(
                        'help us personalize your childs \nlearning experience',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 46, 7, 102)),
                      ),
                      Text(
                        'whats your childs gender?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 87, 31, 166)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
