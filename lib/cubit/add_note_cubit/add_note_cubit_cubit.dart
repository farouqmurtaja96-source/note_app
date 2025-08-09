import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_appv3/const/const.dart';
import 'package:note_appv3/model/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  Color color = Color(0xffb38cb4);
  addNote(NoteModel notes) {
    notes.color = color.toARGB32();
    emit(AddNoteCubitLodaing());
    try {
      var notesbox = Hive.box<NoteModel>(kPrimary);
      notesbox.add(notes);
      emit(AddNoteCubitSucces());
    } catch (e) {
      emit(AddNoteCubitFaliuer(errorState: e.toString()));
    }
  }
}
