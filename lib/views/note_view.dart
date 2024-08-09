import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note.dart';
import 'package:note_app/widget/note_view_body.dart';

class NoteViews extends StatelessWidget {
  const NoteViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            context: (context),
            builder: (context) {
              return AddNote();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: NoteViewBody(),
    );
  }
}
