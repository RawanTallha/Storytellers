// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:storytellers/card/community_card.dart';
import 'package:storytellers/card/recent_story_card.dart';
import 'package:storytellers/card/genre_card.dart';
import 'package:flutter/material.dart';
import 'package:storytellers/pages/community_page.dart';
import 'package:storytellers/pages/login_page.dart';
import 'package:storytellers/pages/profile_page.dart';
import 'package:storytellers/pages/recent_story_page.dart';
import 'package:storytellers/pages/story_page.dart';
import 'package:storytellers/pages/subscription_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft, // Align to the left
              padding:
                  EdgeInsets.all(16.0), // Optional: Add padding for spacing
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align children to the left
                children: [
                  Icon(Icons.menu_rounded,
                      color: Color.fromARGB(255, 121, 89, 178)),
                  Text(
                    'المزيد',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 121, 89, 178),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings,
                  color: Color.fromARGB(255, 121, 89, 178)),
              title: Text('الإعدادات'),
              onTap: () {
                // Action for Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money,
                  color: Color.fromARGB(255, 121, 89, 178)),
              title: Text('خطة الاشتراك'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SubscriptionPage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.support_agent,
                  color: Color.fromARGB(255, 121, 89, 178)),
              title: Text('تواصل معنا'),
              onTap: () {
                // Action for Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app,
                  color: Color.fromARGB(255, 121, 89, 178)),
              title: Text('الخروج من الحساب'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LogInPage();
                }));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/doodle-ver.png', // Path to the background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // Main content
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  // App bar with drawer icon
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Sidebar menu icon inside a Builder
                        Builder(
                          builder: (context) => IconButton(
                            icon: Icon(Icons.menu, color: Colors.white),
                            onPressed: () {
                              Scaffold.of(context)
                                  .openDrawer(); // Opens the sidebar
                            },
                          ),
                        ),

                        // Logo
                        Image.asset(
                          'lib/assets/white-logo.png',
                          height: 45,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'مرحبًا بك',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'كاتبنا الصغير: جسار',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'lib/assets/character/prince.png',
                        height: 150,
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  // Horizontal ListView for genres
                  Column(
                    children: [
                      GenreCard(
                        serviceName: 'قصتك حكاية بلمستك',
                        iconImagePath: 'lib/assets/book.png',
                        pageTitle: '',
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  // section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RecentStoryPage();
                            }));
                          },
                          child: Text(
                            'المزيد',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          'مكتبتي الصغيرة',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // Horizontal ListView for stories
                  SizedBox(
                    height: 200, // Set height for horizontal ListView
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        RecentStoryCard(
                          eventImagePath: 'lib/assets/sleep.png',
                          eventOrganizer: 'الذئب النائم',
                        ),
                        RecentStoryCard(
                          eventImagePath: 'lib/assets/birdwatching.png',
                          eventOrganizer: 'عالم الطيور',
                        ),
                        RecentStoryCard(
                          eventImagePath: 'lib/assets/simpathy.jpg',
                          eventOrganizer: 'الكلب اللطيف',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  // Events section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'المزيد',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'مجتمع الكتاب الصغار',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 200, // Set height for horizontal ListView
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CommunityCard(
                              authorsName: 'محمد الغامدي ',
                              storyTitle: 'ليلى و سمكاتها',
                              storyImagePath: 'lib/assets/fish.png'),
                          CommunityCard(
                              authorsName: 'لين محمد',
                              storyTitle: 'الفيل الصغير',
                              storyImagePath: 'lib/assets/elephant.png'),
                        ],
                      ),
                    ),
                  ),

                  // add additional section if needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
