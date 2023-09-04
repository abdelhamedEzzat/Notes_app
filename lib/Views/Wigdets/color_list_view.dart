// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/constant.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit_cubit.dart';

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
                  BlocProvider.of<AddNoteCubitCubit>(context).color =
                      kcolors[index];
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
