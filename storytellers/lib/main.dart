import 'package:flutter/material.dart';
import 'package:storytellers/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //home: services_page(title: 'money talks'),
      //home: history_page(),
    );
  }
}
