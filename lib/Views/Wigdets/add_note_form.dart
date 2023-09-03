import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/Wigdets/custom_Text_Filed.dart';
import 'package:notes_app/Views/Wigdets/custom_bottom.dart';
import 'package:notes_app/cubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextFiled(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Field is Required";
              } else {
                return null;
              }
            },
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Field is Required";
              } else {
                return null;
              }
            },
            hint: "Content",
            maxLine: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomBottom(
            onTap: () {
              print(title);
              print(subTitle);
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                    color: Colors.blue.value,
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString());
                BlocProvider.of<AddNoteCubitCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;

                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
