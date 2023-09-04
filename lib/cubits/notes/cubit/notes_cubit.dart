import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Views/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notesList;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kHiveNotesBox);
    notesList = notesBox.values.toList();
    emit(SuccessNotes());
  }
}
