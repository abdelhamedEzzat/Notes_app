import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffffcd79),
          borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
          ),
          subtitle: Text(
            "build your Career With Abdelhameed Ezzat",
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14, right: 16),
          child: Text(
            "may21 , 2022",
            style:
                TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 14),
          ),
        )
      ]),
    );
  }
}
