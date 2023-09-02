import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/NotesView.dart';

void main() {
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
