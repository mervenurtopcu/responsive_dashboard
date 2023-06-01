import 'package:flutter/material.dart';
import 'package:food_dashboard/products/constants/string_constants.dart';

import '../../../products/constants/color_constants.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              StringConstants.dashboardOrder,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 1,
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                StringConstants.viewReport,
                style:
                TextStyle(color: ColorConstants.lightpurple, fontSize: 8),
              ),
            ),
          ],
        ),
        const Text(
          StringConstants.percentage,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        RichText(
          text: const TextSpan(
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.arrow_downward_outlined,
                  size: 18,
                  color: Colors.red,
                ),
              ),
              TextSpan(text: StringConstants.percentage, style: TextStyle(color: Colors.red)),
              TextSpan(
                text:  StringConstants.lastWeek,
                style: TextStyle(color: ColorConstants.mountainMeadow),
              ),
            ],
          ),
        ),
        const SizedBox(height: defaultPadding),
        Expanded(
          child: Image.asset(
            "assets/png/order_chart.png",
          ),
        ),
      ],
    );
  }
}
