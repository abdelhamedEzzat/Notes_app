import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/constant.dart';

import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/add_bloc_obs/simple_bloc_observer.dart';
import 'package:notes_app/cubits/notes/cubit/notes_cubit.dart';

import 'package:notes_app/model/note_model.dart';

void main() async {
  Bloc.observer = SempleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kHiveNotesBox);

  runApp(const AppNote());
}

class AppNote extends StatelessWidget {
  const AppNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NotesCubit(),
          )
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:
                ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
            home: const NotesView()));
  }
}
