import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_appv3/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_appv3/model/note_model.dart';
import 'package:note_appv3/widget/app_bar_widget.dart';
import 'package:note_appv3/widget/text_filed_widget.dart';

class EditBodyWidget extends StatefulWidget {
  const EditBodyWidget({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditBodyWidget> createState() => _EditBodyWidgetState();
}

class _EditBodyWidgetState extends State<EditBodyWidget> {
  String? title, conten;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          AppBarWidget(
            icon: Icons.check,
            title: 'Edit',
            onPress: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.contet = conten ?? widget.noteModel.contet;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).featch();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 25),
          TextFiledWidget(
            hint: widget.noteModel.title,

            onChage: (p0) {
              title = p0;
            },
          ),
          SizedBox(height: 16),
          TextFiledWidget(
            hint: widget.noteModel.contet,
            maxline: 5,

            onChage: (p0) {
              conten = p0;
            },
          ),
        ],
      ),
    );
  }
}
