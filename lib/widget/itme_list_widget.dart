import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_appv3/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_appv3/model/note_model.dart';
import 'package:note_appv3/widget/itme_widget.dart';

class ItmeListWidget extends StatelessWidget {
  const ItmeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ItmeWidget(noteModel: notes[index]),
            );
          },
        );
      },
    );
  }
}
