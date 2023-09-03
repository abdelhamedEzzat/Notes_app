import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Views/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kHiveNotesBox);
      await notesBox.add(note);

      emit(AddNoteSuccess());
    } on Exception catch (e) {
      AddNoteFailed(e.toString());
    }
  }
}
