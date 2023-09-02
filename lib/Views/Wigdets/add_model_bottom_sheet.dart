import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/custom_Text_Filed.dart';
import 'package:notes_app/Views/Wigdets/custom_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextFiled(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFiled(hint: "Content", maxLine: 5),
            SizedBox(
              height: 32,
            ),
            CustomBottom(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
