import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            alignment: AlignmentDirectional.centerEnd,
            icon: const Icon(Icons.bubble_chart_outlined),
            items: locations.map((String items) {
              return DropdownMenuItem(value: items, child: Text(items));
            }).toList(),
            onChanged: (String? location) {}),
      ),
    );
  }
}

var locations = [
  'add category',
  'select all \n stores',
  'delet all \n product'
];
