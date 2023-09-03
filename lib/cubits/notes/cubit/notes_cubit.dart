import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Views/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kHiveNotesBox);
      List<NoteModel> notesList = notesBox.values.toList();
      emit(NotesSuccess(notesList));
    } on Exception catch (e) {
      emit(NotesFailed(e.toString()));
    }
  }
}
