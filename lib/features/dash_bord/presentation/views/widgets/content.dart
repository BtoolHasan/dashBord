import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class Content {
  Content({required this.content, required this.tab});
  
  final CustomTab tab; 
  final Widget content;
}