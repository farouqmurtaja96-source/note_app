import 'package:flutter/material.dart';
import 'package:note_appv3/widget/add_note_widget.dart';
import 'package:note_appv3/widget/view_body_widget.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewBodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteWidget();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
