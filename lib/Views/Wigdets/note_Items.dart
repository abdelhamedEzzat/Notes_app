import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/edit_notes.dart';
import 'package:notes_app/cubits/notes/cubit/notes_cubit.dart';

import 'package:notes_app/model/note_model.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    Key? key,
    required this.notesData,
  }) : super(key: key);

  final NoteModel notesData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNotesView();
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(notesData.color),
            borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                notesData.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
            ),
            subtitle: Text(
              notesData.subTitle,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
            ),
            trailing: IconButton(
                onPressed: () {
                  notesData.delete();

                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, right: 16),
            child: Text(
              notesData.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 14),
            ),
          )
        ]),
      ),
    );
  }
}
