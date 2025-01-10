import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/add_store_body.dart';
import 'package:flutter/material.dart';

class AddStoreView extends StatefulWidget {
  const AddStoreView({super.key});

  @override
  State<AddStoreView> createState() => _AddStoreViewState();
}

class _AddStoreViewState extends State<AddStoreView> {
  @override
  Widget build(BuildContext context) {
    return const AddStoreBody();
  }
}
