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
            child: Text('Dashboard',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          )),
          const SizedBox(height: defaultPadding / 2),
           Container(color: Colors.transparent,height: 500,child: Revenue(),),
          const SizedBox(height: defaultPadding / 2),
          Responsive.isTablet(context) ? Row(
            children: [
              Expanded(flex:1,child: Container(color: Colors.transparent,height: 500,child: YourRating(),)),
              const VerticalDivider(color: ColorConstants.mountainMeadow,),
              Expanded(flex:1,child: Container(color: Colors.transparent,height: 500,child: MostOrderedFood(),)),
            ],
          ): Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(color: Colors.transparent,height: 500,child: YourRating(),),
              const SizedBox(height: defaultPadding / 2),
              Container(color: Colors.transparent,height: 500,child: MostOrderedFood(),),
            ],
          ),
          const SizedBox(height: defaultPadding / 2),
          Container(color: Colors.transparent,height: 500,child: OrderTime(),),
          const SizedBox(height: defaultPadding / 2),
          Container(color: Colors.transparent,height: 500,child: Order(),),
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
            child: Text('Dashboard',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          )),
          const SizedBox(height: defaultPadding * 2),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(flex:2,child: Padding(
                  padding: !Responsive.isDesktop(context) ? const EdgeInsets.only(left: defaultPadding,right: defaultPadding) : const EdgeInsets.only(left: defaultPadding),
                  child: Container(color: Colors.transparent,child: Revenue(),),
                )),
                if(Responsive.isDesktop(context)) const VerticalDivider(color: ColorConstants.mountainMeadow,),
                if(Responsive.isDesktop(context)) Expanded(flex:1,child: Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: Container(color: Colors.transparent,child: OrderTime(),),
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
                  child: Container(color: Colors.transparent,child: YourRating(),),
                )),
                if(Responsive.isDesktop(context) || Responsive.isTablet(context)) const VerticalDivider(color: ColorConstants.mountainMeadow,),
                if(Responsive.isDesktop(context) || Responsive.isTablet(context))Expanded(flex:1,child: Padding(
                  padding: !Responsive.isDesktop(context) ? const EdgeInsets.only(right: defaultPadding,bottom: defaultPadding/2) : const EdgeInsets.only(bottom: defaultPadding/2),
                  child: Container(color: Colors.transparent,child: MostOrderedFood(),),
                )),
                if(Responsive.isDesktop(context)) const VerticalDivider(color: ColorConstants.mountainMeadow,),
                if(Responsive.isDesktop(context)) Expanded(flex:1,child: Padding(
                  padding: const EdgeInsets.only(right: defaultPadding,bottom: defaultPadding/2),
                  child: Container(color: Colors.transparent,child: Order(),),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
// class DashboardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: SingleChildScrollView(
//         primary: false,
//         padding:  EdgeInsets.all(defaultPadding),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Header(),
//             Divider(color: ColorConstants.mountainMeadow),
//             SizedBox(height: defaultPadding),
//             Align(alignment: Alignment.centerLeft,child: Text('Dashboard',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
//             SizedBox(height: defaultPadding * 2),
//            Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Expanded(flex:2,child: Align(alignment:Alignment.topCenter,child: Revenue())),
//                SizedBox(width: defaultPadding),
//                if(Responsive.isDesktop(context)) Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: OrderTime()))
//              ],
//            ),
//            Row(
//              children: [
//                 const Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: YourRating())),
//                 SizedBox(width: defaultPadding),
//                if(Responsive.isDesktop(context)) Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: MostOrderedFood())),
//                 SizedBox(width: defaultPadding),
//                if(Responsive.isDesktop(context)) Expanded(flex:1,child: Align(alignment:Alignment.topCenter,child: Order()))
//              ],
//            ),
//             if(!Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
//             if(!Responsive.isDesktop(context)) MostOrderedFood(),
//             if(!Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
//             if(!Responsive.isDesktop(context)) OrderTime(),
//             if(!Responsive.isDesktop(context)) SizedBox(width: defaultPadding/2),
//             if(!Responsive.isDesktop(context)) Order(),
//           ],
//
//         ),
//       ),
//     );
//   }
// }