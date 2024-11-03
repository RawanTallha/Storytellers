// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storytellers/card/subscription_card.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      // color: Color.fromARGB(192, 219, 201, 247),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'اشتراك شهري',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'بمبلغ رمزي قدره 5 ريالات للشهر',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'lib/assets/book (1).png',
                              height: 70,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SubscriptionCard(iconImagePath: 'lib/assets/book (3).png'),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
