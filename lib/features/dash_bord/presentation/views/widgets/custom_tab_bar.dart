import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key, required this.controller, required this.tabs});
  final TabController controller;
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double tapBarScalling = screenWidth > 1400
        ? 0.21
        : screenWidth > 1100
            ? 0.3
            : 0.4;
    return Container(
      //  width: screenWidth * tapBarScalling,
      width: screenWidth,
      color: kPrimeryColor,
      child: TabBar(
        tabs: tabs,
        indicatorColor: kSecondaryColor,
        controller: controller,
      ),
    );
  }
}
