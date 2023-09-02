import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxLine = 1});
  final String hint;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: maxLine,
        cursorColor: KprimaryColor,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: KprimaryColor,
            ),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(KprimaryColor)));
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white));
}
