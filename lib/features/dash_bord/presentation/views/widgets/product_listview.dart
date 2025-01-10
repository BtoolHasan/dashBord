import 'package:dash_bord_app/core/utils/app_router.dart';
import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/add_button.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductListview extends StatelessWidget {
  const ProductListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: 145,
              width: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ProductContainer(),
                itemCount: 10,
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Material(
            borderRadius: BorderRadius.circular(50),
            color: kSecondaryColor,
            child: MaterialButton(
                minWidth: 90,
                height: 90,
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kAddproduct);
                },
                child: const Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: kWhiteColor,
                    ),
                    Text(
                      '    add \n product',
                      style: TextStyle(
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
