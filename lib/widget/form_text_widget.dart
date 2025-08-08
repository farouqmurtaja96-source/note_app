import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_appv3/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:note_appv3/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_appv3/model/note_model.dart';
import 'package:note_appv3/widget/button_widget.dart';
import 'package:note_appv3/widget/text_filed_widget.dart';

class FormTextWidget extends StatefulWidget {
  const FormTextWidget({super.key});

  @override
  State<FormTextWidget> createState() => _FormTextWidgetState();
}

class _FormTextWidgetState extends State<FormTextWidget> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          TextFiledWidget(
            hint: 'Title',
            onSave: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          TextFiledWidget(
            hint: 'Content',
            maxline: 5,
            onSave: (value) {
              content = value;
            },
          ),
          SizedBox(height: 32),
          BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
            builder: (context, state) {
              return ButtonWidget(
                isLoading: state is AddNoteCubitLodaing ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var curnet = DateTime.now();
                    var format = DateFormat('dd-mm-yyyy').format(curnet);
                    NoteModel notemodel = NoteModel(
                      title: title!,
                      contet: content!,
                      date: format,
                      color: Colors.blue.toARGB32(),
                    );
                    BlocProvider.of<AddNoteCubitCubit>(
                      context,
                    ).addNote(notemodel);

                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
