import 'package:flutter/material.dart';
import 'package:notes_app/Views/constant.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kprimaryColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.black,
              )
            : const Center(
                child: Text(
                "Add",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
      ),
    );
  }
}
