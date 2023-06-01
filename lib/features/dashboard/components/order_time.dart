import 'package:flutter/material.dart';
import 'package:food_dashboard/products/constants/string_constants.dart';

import '../../../products/constants/color_constants.dart';

class OrderTime extends StatelessWidget {
  const OrderTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              StringConstants.dashboardOrderTime,
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
        Expanded(
          child: Image.asset(
            'assets/png/order_time_chart.png',
           // fit: BoxFit.fill
          ),
        )
      ],
    );
  }
}
