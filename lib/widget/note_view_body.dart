import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_appBar.dart';
import 'package:note_app/widget/note_view_list.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            icons: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: NoteItemList()),
        ],
      ),
    );
  }
}
