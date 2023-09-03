import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/constant.dart';

import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/model/note_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kHiveNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const AppNote());
}

class AppNote extends StatelessWidget {
  const AppNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
