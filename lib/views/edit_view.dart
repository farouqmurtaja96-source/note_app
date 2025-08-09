import 'package:flutter/material.dart';
import 'package:note_appv3/model/note_model.dart';
import 'package:note_appv3/widget/edit_body_widget.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditBodyWidget(noteModel: noteModel));
  }
}
