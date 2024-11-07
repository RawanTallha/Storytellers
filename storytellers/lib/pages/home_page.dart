// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:storytellers/card/community_card.dart';
import 'package:storytellers/card/recent_story_card.dart';
import 'package:storytellers/card/genre_card.dart';
import 'package:flutter/material.dart';
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
                              'كاتبنا الصغير: لالا',
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

                  //Card with catch phrase
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Card(
                      color: Color.fromARGB(
                          0, 188, 20, 20), // Make card background transparent
                      elevation: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(185, 41, 23, 101),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'lib/assets/write.png',
                              height: 80,
                            ),

                            // Catch phrase
                            Text(
                              'قصتك… حكاية بلمستك',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(198, 255, 255,
                                    255), // Adjust color as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // generate your story list section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return StoryPage(
                                title: '',
                              );
                            }));
                          },
                          child: Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          'اختر مغامرتك',
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

                  // Horizontal ListView for genres
                  Column(
                    children: [
                      GenreCard(
                        serviceName: 'قصة حوارية',
                        iconImagePath: 'lib/assets/book.png',
                        pageTitle: '',
                      ),
                      GenreCard(
                        serviceName: 'قصة شعرية',
                        iconImagePath: 'lib/assets/fairy-tale.png',
                        pageTitle: '',
                      ),
                      GenreCard(
                        serviceName: 'قصة وصفية',
                        iconImagePath: 'lib/assets/bedtime.png',
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
                          eventOrganizer: 'sleepy wolf',
                        ),
                        RecentStoryCard(
                          eventImagePath: 'lib/assets/birdwatching.png',
                          eventOrganizer: 'some kid watching',
                        ),
                        RecentStoryCard(
                          eventImagePath: 'lib/assets/simpathy.jpg',
                          eventOrganizer: 'some kid watching',
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
                          CommunityCard(),
                          CommunityCard(),
                          CommunityCard(),
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
