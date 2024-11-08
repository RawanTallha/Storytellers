// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storytellers/card/recent_story_card.dart';
import 'package:storytellers/card/top_ranked.dart';
import 'package:storytellers/pages/login_page.dart';
import 'package:storytellers/pages/subscription_page.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // This makes the body extend behind the AppBar
      appBar: AppBar(
        title: Text(
          'مجتمع الكتاب الصغار',
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
                  SizedBox(height: 50),
                  Text(
                    'معًا نحول أحلام الاطفال الى ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    'حكايات ممتعة',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 30),
                  // Image carousel
                  SizedBox(
                    height: 380,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 10),
                        TopRankedCard(),
                        TopRankedCard(),
                        TopRankedCard(),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.5, // Thickness of the line
                    indent: 20, // Empty space to the leading edge
                    endIndent: 20, // Empty space to the trailing edge
                  ),
                  Text(
                    'كتاب اخرون',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  // Profile card list
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ProfileCard(
                          name: 'اسيل',
                          imagePath: 'lib/assets/monsters/monster (17).png',
                        ),
                        ProfileCard(
                          name: 'لينا',
                          imagePath: 'lib/assets/monsters/monster (16).png',
                        ),
                        ProfileCard(
                          name: 'عمر',
                          imagePath: 'lib/assets/monsters/monster (15).png',
                        ),
                        ProfileCard(
                          name: 'احمد',
                          imagePath: 'lib/assets/monsters/monster (1).png',
                        ),
                        ProfileCard(
                          name: 'علي',
                          imagePath: 'lib/assets/monsters/monster (6).png',
                        ),
                        ProfileCard(
                          name: 'عبدالعزيز',
                          imagePath: 'lib/assets/monsters/monster (5).png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1.5, // Thickness of the line
                    indent: 20, // Empty space to the leading edge
                    endIndent: 20, // Empty space to the trailing edge
                  ),
                  SizedBox(
                    height: 10,
                  ),
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

// Custom widget for profile cards
class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const ProfileCard({Key? key, required this.name, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromARGB(221, 255, 255, 255),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
