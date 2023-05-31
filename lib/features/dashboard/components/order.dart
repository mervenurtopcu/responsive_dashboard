import 'package:flutter/material.dart';

import '../../../products/constants/color_constants.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Order",
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
          const Text(
            '2.568',
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
                TextSpan(text: '2.1% ', style: TextStyle(color: Colors.red)),
                TextSpan(
                  text: 'vs last week',
                  style: TextStyle(color: ColorConstants.mountainMeadow),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding),
          Image.asset(
            "assets/png/order_chart.png",
            //width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
