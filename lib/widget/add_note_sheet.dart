import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';
import 'package:note_app/cubits/add_note/add_note_state.dart';
import 'package:note_app/model/note_model.dart';
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
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return AddNoteSheetIcon(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var data = DateTime.now();
                      var formatDate = DateFormat.yMd().format(data);
                      var notemodell = NoteModel(
                          title: Title!,
                          subtitle: Content!,
                          date: formatDate,
                          color: Colors.amber.value);
                      BlocProvider.of<AddNoteCubit>(context)
                          .AddNote(notemodell);
                    } else {
                      auto = AutovalidateMode.always;
                    }
                  },
                );
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
