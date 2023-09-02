import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
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
          ],
        ),
      ),
    );
  }
}
