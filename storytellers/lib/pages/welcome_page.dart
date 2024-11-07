

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
          Text(
            'هيا بنا',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text('')
        ]),
      ),
    );
  }
}
