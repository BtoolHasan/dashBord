import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/new_store_info.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class AddProductBody extends StatelessWidget {
  const AddProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const Icon(Icons.info_outline),
                  Text(
                    'add product:',
                    style: kCandara18Bold.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NewStoreInfo(text1: 'product name: '),
                      SizedBox(
                        height: 30,
                      ),
                      NewStoreInfo(text1: 'price:                 ')
                    ],
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewStoreInfo(text1: 'names:        '),
                    SizedBox(
                      height: 30,
                    ),
                    NewStoreInfo(
                      text1: 'image URL: ',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  Text(
                    'discreption:      ',
                    style: kCandara18Bold.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const TextFieldWidget(width: 624, height: 60)
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Material(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                onPressed: () {},
                minWidth: 110,
                height: 50,
                child: Text(
                  'Add',
                  style: kCandara20.copyWith(fontSize: 16, color: kWhiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
