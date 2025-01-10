import 'package:dash_bord_app/core/utils/app_router.dart';
import 'package:dash_bord_app/core/utils/constant.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/store_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StoresListview extends StatefulWidget {
  const StoresListview({super.key});

  @override
  State<StoresListview> createState() => _StoresListviewState();
}

class _StoresListviewState extends State<StoresListview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: 190,
              width: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const StoreContainer(),
                itemCount: 10,
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Material(
            borderRadius: BorderRadius.circular(50),
            color: kPrimeryColor,
            child: MaterialButton(
                minWidth: 100,
                height: 100,
                onPressed: () {
                  setState(() {
                    GoRouter.of(context).go(AppRouter.kAddStore);
                  });
                },
                child: const Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: kWhiteColor,
                    ),
                    Text(
                      'add store',
                      style: TextStyle(color: kWhiteColor),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
