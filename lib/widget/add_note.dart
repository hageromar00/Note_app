import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note_sheet.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: AddNoteSheet(),);
  }
}