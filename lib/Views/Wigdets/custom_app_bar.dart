import 'package:flutter/material.dart';

import 'package:notes_app/Views/Wigdets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.icon,
    required this.title,
    this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 28),
                ),
                const Spacer(),
                CustomSearchIcon(icon: icon, onPressed: onPressed),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
