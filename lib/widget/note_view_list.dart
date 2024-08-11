import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubits.dart';
import 'package:note_app/cubits/note_cubit/note_state.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteViewCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> note =
            BlocProvider.of<NoteViewCubit>(context).notes ?? [];
        return ListView.builder(
            itemCount: note.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 7),
                child: NoteItem(not: note[index],),
              );
            });
      },
    );
  }
}
