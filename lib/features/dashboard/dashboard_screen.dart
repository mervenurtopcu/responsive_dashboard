import 'package:flutter/material.dart';
import 'package:food_dashboard/features/dashboard/components/most_ordered_food.dart';
import 'package:food_dashboard/features/dashboard/components/order.dart';
import 'package:food_dashboard/features/dashboard/components/order_time.dart';
import 'package:food_dashboard/features/dashboard/components/revenue.dart';
import 'package:food_dashboard/features/dashboard/components/your_rating.dart';
import 'package:food_dashboard/products/layout/responsive_layout.dart';

import '../../products/constants/color_constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding:  EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(),
            Divider(color: ColorConstants.mountainMeadow),
            SizedBox(height: defaultPadding),
            Align(alignment: Alignment.centerLeft,child: Text('Dashboard',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            SizedBox(height: defaultPadding * 2),
           Row(
           crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Expanded(flex:2,child: Align(alignment:Alignment.topCenter,child: Revenue())),
               SizedBox(width: defaultPadding),
               if(Responsive.isDesktop(context)) Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: OrderTime()))
             ],
           ),
           Row(
             children: [
                const Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: YourRating())),
                SizedBox(width: defaultPadding),
               if(Responsive.isDesktop(context)) Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: MostOrderedFood())),
                SizedBox(width: defaultPadding),
               if(Responsive.isDesktop(context)) Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: Order()))
             ],
           ),
            if(!Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
            if(!Responsive.isDesktop(context)) MostOrderedFood(),
            if(!Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
            if(!Responsive.isDesktop(context)) OrderTime(),
            if(!Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
            if(!Responsive.isDesktop(context)) Order(),
          ],

        ),
      ),
    );
  }
}