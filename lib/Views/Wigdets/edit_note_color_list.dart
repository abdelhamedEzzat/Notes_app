import 'package:flutter/material.dart';
import 'package:notes_app/Views/Wigdets/color_list_view.dart';
import 'package:notes_app/Views/constant.dart';
import 'package:notes_app/model/note_model.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({
    Key? key,
    required this.editNoteColor,
  }) : super(key: key);
  final NoteModel editNoteColor;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  @override
  void initState() {
    super.initState();
    kcurrentIndex = kcolors.indexOf(Color(widget.editNoteColor.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kcolors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  kcurrentIndex = index;
                  widget.editNoteColor.color = kcolors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kcolors[index],
                  iSActive: kcurrentIndex == index,
                )),
          );
        },
      ),
    );
  }
}
