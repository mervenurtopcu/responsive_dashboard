import 'package:flutter/material.dart';
import 'package:food_dashboard/features/dashboard/components/most_ordered_food.dart';
import 'package:food_dashboard/features/dashboard/components/order.dart';
import 'package:food_dashboard/features/dashboard/components/order_time.dart';
import 'package:food_dashboard/features/dashboard/components/revenue.dart';
import 'package:food_dashboard/features/dashboard/components/your_rating.dart';
import 'package:food_dashboard/products/constants/string_constants.dart';
import 'package:food_dashboard/products/layout/responsive_layout.dart';

import '../../products/constants/color_constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) ||  Responsive.isTablet(context) ?
    SafeArea(
        child: SingleChildScrollView(
      primary: false,
      padding: const EdgeInsets.all(defaultPadding),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          const Divider(color: ColorConstants.mountainMeadow,),
          const Align(alignment: Alignment.centerLeft,child: Padding(
            padding: EdgeInsets.only(left: defaultPadding),
            child: Text(StringConstants.dashboard,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          )),
          const SizedBox(height: defaultPadding / 2),
           Container(color: Colors.transparent,height: 500,child: const Revenue(),),
          const SizedBox(height: defaultPadding / 2),
          Responsive.isTablet(context) ? Row(
            children: [
              Expanded(flex:1,child: Container(color: Colors.transparent,height: 500,child: const YourRating(),)),
              const VerticalDivider(color: ColorConstants.mountainMeadow,),
              Expanded(flex:1,child: Container(color: Colors.transparent,height: 500,child: const MostOrderedFood(),)),
            ],
          ): Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(color: Colors.transparent,height: 500,child: const YourRating(),),
              const SizedBox(height: defaultPadding / 2),
              Container(color: Colors.transparent,height: 500,child: const MostOrderedFood(),),
            ],
          ),
          const SizedBox(height: defaultPadding / 2),
          Container(color: Colors.transparent,height: 500,child: const OrderTime(),),
          const SizedBox(height: defaultPadding / 2),
          Container(color: Colors.transparent,height: 500,child: const Order(),),
        ],
      ),
    )):  
    SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: defaultPadding,top: defaultPadding/2),
            child: Header(),
          ),
          const Divider(color: ColorConstants.mountainMeadow,),
          const Align(alignment: Alignment.centerLeft,child: Padding(
            padding: EdgeInsets.only(left: defaultPadding),
            child: Text(StringConstants.dashboard,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          )),
          const SizedBox(height: defaultPadding * 2),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(flex:2,child: Padding(
                  padding: !Responsive.isDesktop(context) ? const EdgeInsets.only(left: defaultPadding,right: defaultPadding) : const EdgeInsets.only(left: defaultPadding),
                  child: Container(color: Colors.transparent,child: const Revenue(),),
                )),
                if(Responsive.isDesktop(context)) const VerticalDivider(color: ColorConstants.mountainMeadow,),
                if(Responsive.isDesktop(context)) Expanded(flex:1,child: Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: Container(color: Colors.transparent,child: const OrderTime(),),
                )),
              ],
            ),
          ),
          const Divider(color: ColorConstants.mountainMeadow,),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(flex:1,child: Padding(
                  padding: !Responsive.isDesktop(context) ? const EdgeInsets.only(left: defaultPadding,right: defaultPadding,bottom: defaultPadding/2) : const EdgeInsets.only(left: defaultPadding,bottom: defaultPadding/2),
                  child: Container(color: Colors.transparent,child: const YourRating(),),
                )),
                if(Responsive.isDesktop(context) || Responsive.isTablet(context)) const VerticalDivider(color: ColorConstants.mountainMeadow,),
                if(Responsive.isDesktop(context) || Responsive.isTablet(context))Expanded(flex:1,child: Padding(
                  padding: !Responsive.isDesktop(context) ? const EdgeInsets.only(right: defaultPadding,bottom: defaultPadding/2) : const EdgeInsets.only(bottom: defaultPadding/2),
                  child: Container(color: Colors.transparent,child: const MostOrderedFood(),),
                )),
                if(Responsive.isDesktop(context)) const VerticalDivider(color: ColorConstants.mountainMeadow,),
                if(Responsive.isDesktop(context)) Expanded(flex:1,child: Padding(
                  padding: const EdgeInsets.only(right: defaultPadding,bottom: defaultPadding/2),
                  child: Container(color: Colors.transparent,child: const Order(),),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

