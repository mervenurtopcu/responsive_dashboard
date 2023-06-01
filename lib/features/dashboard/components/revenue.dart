import 'package:flutter/material.dart';
import 'package:food_dashboard/products/constants/color_constants.dart';
import 'package:food_dashboard/products/constants/string_constants.dart';

class Revenue extends StatefulWidget {
  const Revenue({Key? key}) : super(key: key);

  @override
  State<Revenue> createState() => _RevenueState();
}

class _RevenueState extends State<Revenue> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              StringConstants.dashboardRevenue,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 1,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
          StringConstants.IDR,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        RichText(
          text: const TextSpan(
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.arrow_upward_outlined,
                  size: 14,
                  color: Colors.green,
                ),
              ),
              TextSpan(
                  text: StringConstants.percentage,
                  style: TextStyle(color: Colors.green, fontSize: 12)),
              TextSpan(
                text: StringConstants.lastWeek,
                style: TextStyle(
                    color: ColorConstants.mountainMeadow, fontSize: 12),
              ),
            ],
          ),
        ),
        const SizedBox(height: defaultPadding),
        Expanded(
          child: Image.asset(
            "assets/png/revenue_chart.png",
          ),
        ),
      ],
    );
  }
}
