import 'package:flutter/material.dart';
import 'package:note_appv3/widget/itme_widget.dart';

class ItmeListWidget extends StatelessWidget {
  const ItmeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ItmeWidget(),
        );
      },
    );
  }
}
