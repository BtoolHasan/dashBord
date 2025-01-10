import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/remove_button.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(-0.4, 0.4),
                    blurRadius: 8,
                    spreadRadius: 0.5,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: productCard('shawarma', '30 000'),
            ),
          ),
          const removeButton(top: 100, left: 37),
        ],
      ),
    );
  }

  Column productCard(String productName, String price) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(width: 70, 'assets/images/crispy.jpg')),
        Text(
          productName,
          style: const TextStyle(color: kSecondaryColor),
        ),
        Text('$price s.p'),
      ],
    );
  }
}
