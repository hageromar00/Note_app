import 'package:flutter/material.dart';
import 'package:note_app/widget/note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: NoteItem(),
          );
        });
  }
}
