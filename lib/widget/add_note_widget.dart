import 'package:flutter/material.dart';
import 'package:note_appv3/widget/button_widget.dart';
import 'package:note_appv3/widget/text_filed_widget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFiledWidget(hint: 'Title'),
            SizedBox(height: 16),
            TextFiledWidget(hint: 'Content', maxline: 5),
            SizedBox(height: 32),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
