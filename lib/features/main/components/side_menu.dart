import 'package:flutter/material.dart';
import 'package:food_dashboard/products/constants/color_constants.dart';
import 'package:food_dashboard/products/constants/string_constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           DrawerHeader(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                 CircleAvatar(
                   child: Text('G',style: TextStyle(color: ColorConstants.white),),
                   backgroundColor: ColorConstants.deeppurple,
                 ),
                  const SizedBox(width: 10),
                  const Text(
                    StringConstants.drawerHeader,
                    style: TextStyle(color: ColorConstants.deeppurple, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          DrawerListTile(
            title: StringConstants.drawerDashboard,
            press: () {},
            icon: const Icon(
              Icons.dashboard,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
          ),
          DrawerListTile(
            title: StringConstants.drawerFoodOrder,
            icon: const Icon(
              Icons.shopping_cart,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: StringConstants.drawerManageMenu,
            icon: const Icon(
              Icons.newspaper_outlined,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: StringConstants.drawerCustomerReview,
            icon: const Icon(
              Icons.chat,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: StringConstants.drawerSettings,
            icon: const Icon(
              Icons.settings,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: StringConstants.drawerPayment,
            icon: const Icon(
              Icons.wallet,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: StringConstants.drawerAccounts,
            icon: const Icon(
              Icons.person,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: StringConstants.drawerHelp,
            icon: const Icon(
              Icons.help_center_rounded,
              color: ColorConstants.mountainMeadow,
              size: defaultPadding,
            ),
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(color: ColorConstants.mountainMeadow),
      ),
      selectedColor: ColorConstants.deeppurple,
    );
  }
}
