import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/custom_search_icon.dart';
import 'package:notes_app/Views/Wigdets/note_Items.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Notes",
                  style: TextStyle(fontSize: 28),
                ),
                Spacer(),
                CustomSearchIcon(),
              ],
            ),
            NoteItem()
          ],
        ),
      ),
    );
  }
}
