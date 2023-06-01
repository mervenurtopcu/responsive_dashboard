import 'package:flutter/material.dart';
import '../../../products/constants/color_constants.dart';
import '../../../products/constants/string_constants.dart';
class YourRating extends StatelessWidget {
  const YourRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
         StringConstants.dashboardYourRating,
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        const Text(StringConstants.subText,style: TextStyle(fontSize: 12,color: ColorConstants.mountainMeadow),),
        Expanded(
          child: Image.asset(
        'assets/png/your_rating_chart.png',
          ),
        ),
      ],
    );
  }
}
