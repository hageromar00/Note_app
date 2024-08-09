import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note_sheet_icon.dart';
import 'package:note_app/widget/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            text: 'title',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            text: 'content',
            maxline: 5,
          ),
          SizedBox(
            height: 20,
          ),
          AddNoteSheetIcon(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
