import 'package:flutter/material.dart';
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
              'lib/assets/rename-wallpaper.png', // Path to the background image
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
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
