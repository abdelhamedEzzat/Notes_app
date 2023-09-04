// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/cubits/notes/cubit/notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.iSActive,
    required this.color,
  }) : super(key: key);
  final bool iSActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return iSActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 36,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> color = [
    Color(0xffAc3931),
    Color(0xffF6D8AE),
    Color(0xff2E4057),
    Color(0xff083D77),
    Color(0xffDA4167),
    Color(0xffF4D35E),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubitCubit>(context).color =
                      color[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: color[index],
                  iSActive: currentIndex == index,
                )),
          );
        },
      ),
    );
  }
}
