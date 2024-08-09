import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class AddNoteSheetIcon extends StatelessWidget {
  const AddNoteSheetIcon({super.key, required this.onTap,this.isLoad=false});
  final void Function()? onTap;
  final bool isLoad;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Kcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
            child: Text(
          'ADD',
          style: TextStyle(fontSize: 20, color: Colors.black),
        )),
      ),
    );
  }
}
