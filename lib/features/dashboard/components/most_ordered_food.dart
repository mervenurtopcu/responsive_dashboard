import 'package:flutter/material.dart';
import 'package:food_dashboard/products/constants/color_constants.dart';

class MostOrderedFood extends StatelessWidget {
  const MostOrderedFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Most Ordered Food', style: TextStyle(fontSize: 14, color: Colors.black),),
          const Text('Easily get started with the Flutter Histogram Chart using a few simple.',style: TextStyle(fontSize: 12,color: ColorConstants.mountainMeadow),),
          Image.asset(
            "assets/png/most_ordered_list.png",
            //width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
