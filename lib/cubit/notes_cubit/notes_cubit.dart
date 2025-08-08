import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_appv3/const/const.dart';
import 'package:note_appv3/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  featch() {
    var notesbox = Hive.box<NoteModel>(kPrimary);
    notes = notesbox.values.toList();

    emit(NotesSucces());
  }
}
