import 'package:flutter/material.dart';

import '../../../products/constants/color_constants.dart';
class YourRating extends StatelessWidget {
  const YourRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Your Rating",
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        Expanded(
          child: Image.asset(
        'assets/png/your_rating_chart.png',
          ),
        ),
      ],
    );
  }
}
