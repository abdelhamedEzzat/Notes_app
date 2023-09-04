import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/Wigdets/note_Items.dart';

import 'package:notes_app/cubits/notes/cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> noteList =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            itemCount: noteList.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NotesItem(
                    notesData: noteList[index],
                  ));
            },
          ),
        );
      },
    );
  }
}
