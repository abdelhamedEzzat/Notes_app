import 'package:flutter/material.dart';
import 'package:notes_app/Views/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxLine = 1});
  final String hint;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: maxLine,
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: kprimaryColor,
            ),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kprimaryColor)));
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: color ?? Colors.white));
}
