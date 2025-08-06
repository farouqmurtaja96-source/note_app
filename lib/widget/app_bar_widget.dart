import 'package:flutter/material.dart';
import 'package:note_appv3/widget/icon_search_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        IconSearchWidget(icon: icon),
      ],
    );
  }
}
