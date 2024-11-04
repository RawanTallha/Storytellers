import 'package:flutter/material.dart';

class SubscriptionCard extends StatefulWidget {
  final String iconImagePath;
  final String subPeriod;
  final String subPrice;

  SubscriptionCard({
    required this.iconImagePath,
    required this.subPeriod,
    required this.subPrice,
    Key? key,
  }) : super(key: key);

  @override
  State<SubscriptionCard> createState() => _SubscriptionCardState();
}

class _SubscriptionCardState extends State<SubscriptionCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 450,
          decoration: BoxDecoration(
            color: Color.fromARGB(202, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromARGB(203, 22, 8, 128), // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Icon(
                  isChecked ? Icons.check_circle : Icons.radio_button_unchecked,
                  color: isChecked
                      ? Color.fromARGB(203, 22, 8, 128)
                      : Colors.transparent,
                  size: 24,
                ),
              ),

              SizedBox(width: 16), // Add spacing

              // Text Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.subPeriod, // Use the subPeriod variable
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        //color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.subPrice, // Use the subPrice variable
                      style: TextStyle(
                        fontSize: 14,
                        //color: Colors.white,
                      ),
                    ),
                    Text(
                      'يشمل المشاركة العائلية',
                      style: TextStyle(
                        fontSize: 12,
                        // color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),

              // Icon Image
              Image.asset(
                widget.iconImagePath,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}
