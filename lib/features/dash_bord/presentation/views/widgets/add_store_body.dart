import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/core/widgets/custom_dropdown.dart';
import 'package:dash_bord_app/core/widgets/custom_second_dropdown.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/new_store_info.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class AddStoreBody extends StatefulWidget {
  const AddStoreBody({super.key});

  @override
  State<AddStoreBody> createState() => _AddStoreBodyState();
}

class _AddStoreBodyState extends State<AddStoreBody> {
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
                    'add store: ',
                    style: kCandara18Bold.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'name:          ',
                            style: kCandara18Bold.copyWith(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const TextFieldWidget(width: 200, height: 35),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const NewStoreInfo(text1: 'governoret: '),
                      const SizedBox(
                        height: 30,
                      ),
                      const NewStoreInfo(
                        text1: 'rate:             ',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'category: ',
                          style: kCandara18Bold.copyWith(fontSize: 16),
                        ),
                        const CustomSecondDropdown(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const NewStoreInfo(text1: 'location:      '),
                    const SizedBox(
                      height: 30,
                    ),
                    const NewStoreInfo(text1: 'image URL: ')
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
                    'discreption: ',
                    style: kCandara18Bold.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const TextFieldWidget(width: 620, height: 60)
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
