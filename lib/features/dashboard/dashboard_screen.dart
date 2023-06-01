import 'package:flutter/material.dart';
import 'package:food_dashboard/products/constants/string_constants.dart';
import 'package:food_dashboard/products/layout/responsive_layout.dart';
import '../../products/constants/color_constants.dart';
import 'package:food_dashboard/features/dashboard/components/index.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? const SafeArea(
            child: SingleChildScrollView(
              primary: false,
              padding: EdgeInsets.all(defaultPadding),
              child: _TabletMobileUi(),
            ),
          )
        : const SafeArea(
            child: _WebUi(),
          );
  }
}

class _WebUi extends StatelessWidget {
  const _WebUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:
              EdgeInsets.only(left: defaultPadding, top: defaultPadding / 2),
          child: Header(),
        ),
        const Divider(
          color: ColorConstants.mountainMeadow,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text(
                StringConstants.dashboard,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )),
        const SizedBox(height: defaultPadding * 2),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Container(
                      color: Colors.transparent,
                      child: const Revenue(),
                    ),
                  )),
              const VerticalDivider(
                color: ColorConstants.mountainMeadow,
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: Container(
                      color: Colors.transparent,
                      child: const OrderTime(),
                    ),
                  )),
            ],
          ),
        ),
        const Divider(
          color: ColorConstants.mountainMeadow,
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: defaultPadding, bottom: defaultPadding / 2),
                    child: Container(
                      color: Colors.transparent,
                      child: const YourRating(),
                    ),
                  )),
              const VerticalDivider(
                color: ColorConstants.mountainMeadow,
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: defaultPadding / 2),
                    child: Container(
                      color: Colors.transparent,
                      child: const MostOrderedFood(),
                    ),
                  )),
              const VerticalDivider(
                color: ColorConstants.mountainMeadow,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: defaultPadding, bottom: defaultPadding / 2),
                  child: Container(
                    color: Colors.transparent,
                    child: const Order(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TabletMobileUi extends StatelessWidget {
  const _TabletMobileUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(),
        const Divider(
          color: ColorConstants.mountainMeadow,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Text(
                StringConstants.dashboard,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )),
        const SizedBox(height: defaultPadding / 2),
        Container(
          color: Colors.transparent,
          height: 500,
          child: const Revenue(),
        ),
        const Divider(
          color: ColorConstants.mountainMeadow,
        ),
        const SizedBox(height: defaultPadding / 2),
        Responsive.isTablet(context)
            ? Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.transparent,
                        height: 500,
                        child: const YourRating(),
                      )),
                  const VerticalDivider(
                    color: ColorConstants.mountainMeadow,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.transparent,
                        height: 500,
                        child: const MostOrderedFood(),
                      )),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 500,
                    child: const YourRating(),
                  ),
                  const Divider(
                    color: ColorConstants.mountainMeadow,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Container(
                    color: Colors.transparent,
                    height: 500,
                    child: const MostOrderedFood(),
                  ),
                ],
              ),
        const Divider(
          color: ColorConstants.mountainMeadow,
        ),
        const SizedBox(height: defaultPadding / 2),
        Container(
          color: Colors.transparent,
          height: 500,
          child: const OrderTime(),
        ),
        const Divider(
          color: ColorConstants.mountainMeadow,
        ),
        const SizedBox(height: defaultPadding / 2),
        Container(
          color: Colors.transparent,
          height: 500,
          child: const Order(),
        ),
      ],
    );
  }
}
