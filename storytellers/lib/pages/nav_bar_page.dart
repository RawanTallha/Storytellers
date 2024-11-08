import 'package:flutter/material.dart';
import 'package:storytellers/pages/community_page.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/profile_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int currentIndex;

  // Constructor that accepts currentIndex with a default value of 0 if not provided
  const MyBottomNavigationBar({Key? key, this.currentIndex = 0})
      : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  late int currentIndex;

  final List<Widget> screens = [
    const HomePage(),
    const CommunityPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex =
        widget.currentIndex; // Initialize with the provided currentIndex
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
