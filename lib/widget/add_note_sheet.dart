import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note_sheet_icon.dart';
import 'package:note_app/widget/custom_text_field.dart';

class AddNoteSheet extends StatefulWidget {
  const AddNoteSheet({super.key});

  @override
  State<AddNoteSheet> createState() => _AddNoteSheetState();
}

class _AddNoteSheetState extends State<AddNoteSheet> {
  String? Title, Content;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode auto = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              text: 'title',
              onSaved: (data) {
                Title = data;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              text: 'content',
              maxline: 5,
              onSaved: (data) {
                Content = data;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            AddNoteSheetIcon(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  auto = AutovalidateMode.always;
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
