import 'package:flutter/material.dart';

class SubscriptionCard extends StatefulWidget {
  final String iconImagePath;

  SubscriptionCard({
    required this.iconImagePath,
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
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 22, 8, 128),
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
                    color: Colors.white, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Icon(
                  isChecked ? Icons.check_circle : Icons.radio_button_unchecked,
                  color: isChecked ? Colors.white : Colors.transparent,
                  size: 24,
                ),
              ),

              // Text Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'اشتراك شهري',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '٥ دولار أمريكي / الشهر',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'يشمل المشاركة العائلية',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // Icon Image
              Image.asset(
                widget.iconImagePath,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 16),
              // Checkbox with border

              SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';

// class SubscriptionCard extends StatefulWidget {
//   final String iconImagePath;

//   SubscriptionCard({
//     required this.iconImagePath,
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<SubscriptionCard> createState() => _SubscriptionCardState();
// }

// class _SubscriptionCardState extends State<SubscriptionCard> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isChecked = !isChecked;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 22, 8, 128),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           padding: const EdgeInsets.all(16),
//           child: Stack(
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   // Icon Image
//                   Image.asset(
//                     widget.iconImagePath,
//                     height: 70,
//                     fit: BoxFit.cover,
//                   ),
//                   SizedBox(width: 16),
//                   // Text Column
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(
//                           'اشتراك شهري',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Text(
//                           '٥ دولار أمريكي / الشهر',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white,
//                           ),
//                         ),
//                         Text(
//                           'يشمل المشاركة العائلية',
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               // Checkbox at the top-right corner
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.white,
//                       width: 2,
//                     ),
//                   ),
//                   child: Icon(
//                     isChecked ? Icons.check_circle : Icons.radio_button_unchecked,
//                     color: isChecked ? Colors.white : Colors.transparent,
//                     size: 24,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
