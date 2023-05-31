import 'package:flutter/material.dart';

import '../../../products/constants/color_constants.dart';

class OrderTime extends StatelessWidget {
  const OrderTime({Key? key}) : super(key: key);

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
          Row(
            children: [
              const Text(
                "Order Time",
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
                  'View Report',
                  style:
                      TextStyle(color: ColorConstants.lightpurple, fontSize: 8),
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/png/order_time_chart.png',
            fit: BoxFit.fill
          )
        ],
      ),
    );
  }
}
