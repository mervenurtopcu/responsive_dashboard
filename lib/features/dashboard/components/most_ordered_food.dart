import 'package:flutter/material.dart';
import 'package:food_dashboard/products/constants/color_constants.dart';
import 'package:food_dashboard/products/constants/string_constants.dart';

class MostOrderedFood extends StatelessWidget {
  const MostOrderedFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(StringConstants.dashboardMostOrderedFood, style: TextStyle(fontSize: 14, color: Colors.black),),
        const Text(StringConstants.subText,style: TextStyle(fontSize: 12,color: ColorConstants.mountainMeadow),),
        Expanded(
          child: Image.asset(
            "assets/png/most_ordered_list.png",
          ),
        ),
      ],
    );
  }
}
