import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/core/widgets/custom_dropdown.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/product_listview.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/stores_listview.dart';
import 'package:flutter/material.dart';

class StoresBody extends StatelessWidget {
  const StoresBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info_outline),
                          Text(
                            'all stores: ',
                            
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomDropDownButton(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const StoresListview(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: storeName('sham foods'),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProductListview(),
          ],
        ),
      ),
    );
  }

  Row storeName(String storeName) {
    return Row(
      children: [
        const Text('Store:'),
        Text(
          storeName,
          style: const TextStyle(color: kSecondaryColor),
        ),
      ],
    );
  }
}
