import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class NewStoreInfo extends StatelessWidget {
  const NewStoreInfo({super.key, required this.text1});
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: kCandara18Bold.copyWith(fontSize: 16),
        ),
        const SizedBox(
          width: 15,
        ),
        const TextFieldWidget(width: 200, height: 35),
      ],
    );
  }
}
