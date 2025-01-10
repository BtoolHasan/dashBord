import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/remove_button.dart';
import 'package:flutter/material.dart';

class StoreContainer extends StatelessWidget {
  const StoreContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Stack(
        children: [
          Container(
            width: 130,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(-0.4, 0.4),
                    blurRadius: 8,
                    spreadRadius: 0.5,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(width: 90, 'assets/images/Rest.jpg')),
                  const Text(
                    '  Sham food    ',
                    style: kCandara18Bold,
                  ),
                  storeInfoColumn('sham', 'food', '5'),
                ],
              ),
            ),
          ),
          const removeButton(
            top: 140,
            left: 105,
          ),
        ],
      ),
    );
  }

  Padding storeInfoColumn(String location, String category, String rate) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Location: ',
                style: kCandara10.copyWith(color: Colors.black),
              ),
              Text(
                location,
                style: kCandara10.copyWith(color: kSecondaryColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Category: ',
                style: kCandara10.copyWith(color: Colors.black),
              ),
              Text(
                category,
                style: kCandara10.copyWith(color: kSecondaryColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Rate: ',
                style: kCandara10.copyWith(color: Colors.black),
              ),
              Text(
                rate,
                style: kCandara10.copyWith(color: kSecondaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
