// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/Views/Wigdets/custom_Text_Filed.dart';
import 'package:notes_app/Views/Wigdets/custom_app_bar.dart';
import 'package:notes_app/cubits/notes/cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({
    Key? key,
    required this.noteEditView,
  }) : super(key: key);
  final NoteModel noteEditView;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.noteEditView.title = title ?? widget.noteEditView.title;
              widget.noteEditView.subTitle =
                  content ?? widget.noteEditView.subTitle;
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              widget.noteEditView.save();

              Navigator.of(context).pop();
            },
            title: "Edit Notes",
            icon: Icons.check,
          ),
          CustomTextFiled(
            onChanged: (value) {
              title = value;
            },
            hint: widget.noteEditView.title,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Field is Required";
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onChanged: (value) {
              content = value;
            },
            hint: widget.noteEditView.subTitle,
            maxLine: 5,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Field is Required";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    ));
  }
}
