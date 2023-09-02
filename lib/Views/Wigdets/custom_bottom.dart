import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/constant.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: KprimaryColor,
      ),
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
        onPressed: () {},
        child: const Center(
            child: Text(
          "Add",
          style: TextStyle(color: Colors.black),
        )),
      ),
    );
  }
}
