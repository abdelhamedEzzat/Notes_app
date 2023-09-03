import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/Views/Wigdets/add_note_form.dart';
import 'package:notes_app/cubit/cubit/add_note_cubit_cubit.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubitCubit(),
        child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteFailed) {
              print("failed ${state.errorMassge}");
            }
            if (state is AddNoteSuccess) {
              Navigator.of(context).pop();
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
            );
          },
        ));
  }
}
