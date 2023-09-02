import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/custom_app_bar.dart';

import 'package:notes_app/Views/Wigdets/notes_list_view.dart';
import 'package:notes_app/Views/edit_notes.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNotesView(),
            ));
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            CustomAppBar(
              title: "Notes",
              icon: Icons.search,
            ),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
