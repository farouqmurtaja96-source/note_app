import 'package:flutter/material.dart';
import 'package:note_appv3/widget/app_bar_widget.dart';
import 'package:note_appv3/widget/text_filed_widget.dart';

class EditBodyWidget extends StatelessWidget {
  const EditBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          AppBarWidget(icon: Icons.check, title: 'Edit'),
          SizedBox(height: 25),
          TextFiledWidget(hint: 'Title'),
          SizedBox(height: 16),
          TextFiledWidget(hint: 'Content', maxline: 5),
        ],
      ),
    );
  }
}
