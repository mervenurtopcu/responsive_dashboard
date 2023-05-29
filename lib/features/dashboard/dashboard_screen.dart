import 'package:flutter/material.dart';

import '../../products/constants/color_constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding:  const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
         Container(color: Colors.black,height: 300,)
          ],
        ),
      ),
    );
  }
}