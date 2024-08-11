import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';
import 'package:note_app/model/note_model.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ))
        : CircleAvatar(
            radius: 25,
            backgroundColor: color,
          );
  }
}

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int curr_index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Kcolors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                curr_index = index;
                BlocProvider.of<AddNoteCubit>(context).color = Kcolors[index];
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ColorItem(
                    isActive: curr_index == index, color: Kcolors[index]),
              ),
            );
          }),
    );
  }
}

class EditColorList extends StatefulWidget {
  const EditColorList({super.key,required this.note});
  final NoteModel note;

  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  int curr_index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Kcolors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  curr_index = index;
                widget.note.color=Kcolors[index].value;
                  Kcolors[index];
                  setState(() {});
                },
                child: ColorItem(
                  isActive: curr_index == index,
                  color: Kcolors[index],
                ),
              ),
            );
          }),
    );
  }
}
