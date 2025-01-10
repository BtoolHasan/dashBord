
import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class removeButton extends StatelessWidget {
  const removeButton({
    super.key,
    required this.top,
    required this.left,
  });
  final double top;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kSecondaryColor,
        ),
        child: IconButton(
          onPressed: () {},
          iconSize: 10,
          icon: const Icon(Icons.minimize),
        ),
      ),
    );
  }
}
