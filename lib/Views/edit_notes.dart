// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/Views/Wigdets/edit_notes_view_body.dart';
import 'package:notes_app/model/note_model.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({
    Key? key,
    required this.editNote,
  }) : super(key: key);
  final NoteModel editNote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(noteEditView: editNote),
    );
  }
}
