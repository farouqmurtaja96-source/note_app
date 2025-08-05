import 'package:flutter/material.dart';
import 'package:note_appv3/widget/icon_search_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        IconSearchWidget(),
      ],
    );
  }
}
