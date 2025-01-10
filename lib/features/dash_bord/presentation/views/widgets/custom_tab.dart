import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        style: kCandara20.copyWith(
          color: kWhiteColor,
        ),
      ),
    );
  }
}
