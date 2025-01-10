import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomSecondDropdown extends StatefulWidget {
  const CustomSecondDropdown({
    super.key,
  });

  @override
  State<CustomSecondDropdown> createState() => _DropdownSignupState();
}

class _DropdownSignupState extends State<CustomSecondDropdown> {
  String selectItem = 'fast food';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 30,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(27),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              icon: const Icon(
                Icons.arrow_circle_down_sharp,
                color: kWhiteColor,
              ),
              items: ['fast food', 'Hama', 'Tartous', 'Daraa']
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (v) {
                setState(() {
                  selectItem = v.toString();
                });
              }),
        ),
      ),
    );
  }
}
