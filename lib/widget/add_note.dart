import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';
import 'package:note_app/cubits/add_note/add_note_state.dart';
import 'package:note_app/cubits/note_cubit/note_cubits.dart';
import 'package:note_app/widget/add_note_sheet.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNotesFailed) {
            print('there is problem here');
          } else if (state is AddNotesSuccess) {
           
            Navigator.pop(context);
             BlocProvider.of<NoteViewCubit>(context).fetchNote();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoad ? true : false,
            child: const SingleChildScrollView(
              child: AddNoteSheet(),
            ),
          );
        },
      ),
    );
  }
}
