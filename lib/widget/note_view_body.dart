import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubits.dart';
import 'package:note_app/widget/custom_appBar.dart';
import 'package:note_app/widget/note_view_list.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteViewCubit>(context).fetchNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            text: 'Notes',
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
