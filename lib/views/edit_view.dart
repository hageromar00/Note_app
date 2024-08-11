import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/custom_appBar.dart';
import 'package:note_app/widget/custom_text_field.dart';
import 'package:note_app/widget/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key,required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: EditViewBody(
      notas: note,
    ));
  }
}
