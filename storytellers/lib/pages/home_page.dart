// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:storytellers/card/event_card.dart';
import 'package:storytellers/card/services_card.dart';
import 'package:flutter/material.dart';
import 'package:storytellers/pages/services_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    'More',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 121, 89, 178),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.account_circle,
                  color: Color.fromARGB(255, 121, 89, 178)),
              title: Text('Profile'),
              onTap: () {
                // Action for Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,
                  color: Color.fromARGB(255, 121, 89, 178)),
              title: Text('Settings'),
              onTap: () {
                // Action for Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support_sharp,
                  color: Color.fromARGB(255, 121, 89, 178)),
              title: Text('Contact us'),
              onTap: () {
                // Action for Settings
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'lib/assets/background.png', // Path to the background image
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
                        // Greeting and name
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Text(
                        //       'Hello,',
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 18,
                        //         color:
                        //             Colors.white, // Text color for readability
                        //       ),
                        //     ),
                        //     Text(
                        //       'Peter B. Parker',
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 24,
                        //         color:
                        //             Colors.white, // Text color for readability
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // Logo
                        Image.asset(
                          'lib/assets/white-logo.png',
                          height: 45,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  //Greeting and name
                  Text(
                    'قصتك لأن كل حكاية تستاهل تُروى... بطريقتك',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w100,
                      color: Colors.white, // Text color for readability
                    ),
                  ),
                  SizedBox(height: 20),
                  // Card with catch phrase
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Card(
                      color: Colors
                          .transparent, // Make card background transparent
                      elevation: 0,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 32, 0, 77),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Optionally, add an image here if desired
                            Image.asset(
                              'lib/assets/Astronaut.png',
                              height: 150,
                            ),
                            // Catch phrase
                            Expanded(
                              child: Text(
                                '?????',
                                style: TextStyle(
                                  //fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: const Color.fromARGB(198, 255, 255,
                                      255), // Adjust color as needed
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),

                  // Services list section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '???',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return services_page(
                                title: '',
                              );
                            }));
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // Horizontal ListView for services
                  Container(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ServicesCard(
                          serviceName: 'قصة حوارية',
                          iconImagePath: 'lib/assets/book.png',
                          pageTitle: '',
                          buttonText: 'View now!',
                        ),
                        ServicesCard(
                          serviceName: 'قصة شعرية؟',
                          iconImagePath: 'lib/assets/fairy-tale.png',
                          pageTitle: '',
                          buttonText: 'file a report',
                        ),
                        ServicesCard(
                          serviceName: 'قصة وصفية',
                          iconImagePath: 'lib/assets/bedtime.png',
                          pageTitle: '',
                          buttonText: 'review history',
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
                          'Recent stories',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return services_page(
                                title: '',
                              );
                            }));
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // Horizontal ListView for events
                  Container(
                    height: 200, // Set height for horizontal ListView
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        EventCard(
                          eventImagePath: 'lib/assets/sleep.png',
                          eventOrganizer: 'sleepy wolf',
                        ),
                        EventCard(
                          eventImagePath: 'lib/assets/birdwatching.png',
                          eventOrganizer: 'some kid watching',
                        ),
                        EventCard(
                          eventImagePath: 'lib/assets/simpathy.jpg',
                          eventOrganizer: 'some kid watching',
                        ),
                        // Add more EventCard widgets as needed
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // Additional events section, if needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
