// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storytellers/card/recent_story_card.dart';
import 'package:storytellers/pages/home_page.dart';
import 'package:storytellers/pages/login_page.dart';
import 'package:storytellers/pages/recent_story_page.dart';
import 'package:storytellers/pages/subscription_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // This makes the body extend behind the AppBar
      appBar: AppBar(
        title: Text(
          'الحساب الشخصي',
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // Makes the AppBar transparent
        elevation: 0, // Removes shadow
        iconTheme: const IconThemeData(color: Colors.black),
      ),
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
            'lib/assets/top-ranked-wakkpaper.png', // Path to the background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // Main content
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Color.fromARGB(185, 41, 23, 101), width: 3),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'lib/assets/monsters/monster (1).png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Aseel Almehmadi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(163, 116, 87, 223),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'كاتب مبتدئ',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  // Other content here
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(104, 158, 158, 158),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    '12',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'كتب منشورة',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(104, 158, 158, 158),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    '14',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'التصنيف',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(104, 158, 158, 158),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'العمر',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProfilePage(); // Ensure this matches the constructor of your HomePage
                      }));
                    },
                    child: Text(
                      'edit profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary:
                          Color.fromARGB(236, 252, 184, 83), // Background color
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
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
                          ),
                        ),
                        Text(
                          'القصص المنشورة',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Horizontal ListView for story genres
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
