import 'package:flutter/material.dart';
import 'package:note_appv3/widget/app_bar_widget.dart';
import 'package:note_appv3/widget/itme_list_widget.dart';
import 'package:note_appv3/widget/itme_widget.dart';

class ViewBodyWidget extends StatelessWidget {
  const ViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          AppBarWidget(),

          Expanded(child: ItmeListWidget()),
        ],
      ),
    );
  }
}
