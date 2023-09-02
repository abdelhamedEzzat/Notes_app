import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/custom_app_bar.dart';
import 'package:notes_app/Views/Wigdets/custom_text_filed.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Notes",
            icon: Icons.check,
          ),
          CustomTextFiled(hint: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(hint: "Content", maxLine: 5),
        ],
      ),
    ));
  }
}
