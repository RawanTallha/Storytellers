// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storytellers/card/feedback_popup_card.dart';
import 'package:storytellers/card/subscription_card.dart';
import 'package:storytellers/pages/home_page.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  void showFeedbackDialog(BuildContext context, String message, bool isSuccess) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return FeedbackPopup(
          message: message,
          isSuccess: isSuccess,
          onClose: () {
            Navigator.of(context).pop(); // Close the dialog
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the app bar
      appBar: AppBar(
        title: const Text(
          'sub plans',
          style: TextStyle(color: Color.fromARGB(255, 61, 4, 122)),
        ),
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        elevation: 0, // Removes the app bar shadow
      ),
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/sub-page.png',
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
                  SizedBox(
                    height: 80,
                  ),
                  Image.asset(
                    'lib/assets/book (2).png',
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'افتح لطفلك عالمًا من التعلم، اشترك الان',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 8, 128)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ابى اكتب شي هنا',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 85, 85, 85)),
                  ),
                  SizedBox(height: 30),
                  SubscriptionCard(
                      iconImagePath: 'lib/assets/book (3).png',
                      subPeriod: 'اشتراك شهري',
                      subPrice: '٥ دولار أمريكي / الشهر'),
                  SubscriptionCard(
                    iconImagePath: 'lib/assets/book (1).png',
                    subPeriod: 'اشتراك سنوي', // Subscription period
                    subPrice: '٥٠ دولار أمريكي / السنة',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showFeedbackDialog(context, "Subscription successful!", true);
                    },
                    child: Text(
                      'submit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(203, 22, 8, 128),
                      minimumSize: Size(450, 60), // Set the width and height
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
