import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleMethod(Icons.info_outline, 'app info'),
        appInfoRow('number of users', '200'),
        appInfoRow('stores', '20'),
        titleMethod(Icons.assignment_ind_outlined, 'admins'),
        admins('Hasan Shabaan'),
        admins('Yazan khadra'),
        admins('Batool Hasan'),
        admins('Anisa Alyakoub'),
        titleMethod(Icons.broken_image_outlined, 'benefits'),
        appInfoRow('total number of orders', '200'),
        appInfoRow('total returns', '5 200 000'),
        appInfoRow('total tips', '400 000'),
      ],
    );
  }

  Padding admins(String name) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Text(
          name,
          style: const TextStyle(color: kSecondaryColor),
        ),
      );

  Padding titleMethod(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Icon(icon),
          Text('$title: '),
        ],
      ),
    );
  }

  Padding appInfoRow(String text, String number) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Row(
        children: [
          Text(
            ' $text : ',
            style: const TextStyle(color: kSecondaryColor),
          ),
          Text(number),
        ],
      ),
    );
  }
}
