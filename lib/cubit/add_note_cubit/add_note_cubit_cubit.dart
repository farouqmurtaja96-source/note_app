import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_appv3/const/const.dart';
import 'package:note_appv3/model/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel notes) {
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
