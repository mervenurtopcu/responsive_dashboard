import 'package:flutter/material.dart';

import '../../../products/constants/color_constants.dart';
class YourRating extends StatelessWidget {
  const YourRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Rating",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          Image.asset(
            'assets/png/your_rating_chart.png',
              fit: BoxFit.fill
          )
        ],
      ),
    );
  }
}
