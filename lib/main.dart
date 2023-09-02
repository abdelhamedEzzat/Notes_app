import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/constant.dart';

import 'package:notes_app/Views/notes_view.dart';

void main() async {
  runApp(const AppNote());
  await Hive.initFlutter();
  await Hive.openBox(kHiveNotesBox);
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
