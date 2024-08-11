import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubits.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/add_color.dart';
import 'package:note_app/widget/custom_appBar.dart';
import 'package:note_app/widget/custom_text_field.dart';
import 'package:note_app/widget/note_view_body.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.notas});
  final NoteModel notas;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icons: Icons.check,
            onPres: () {
              widget.notas.title = title ?? widget.notas.title;
              widget.notas.subtitle = subtitle ?? widget.notas.subtitle;
              widget.notas.save();
             
              BlocProvider.of<NoteViewCubit>(context).fetchNote();
               Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            text: widget.notas.title,
            onChanged: (data) {
              title = data;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            text: 'content',
            maxline: 5,
            onChanged: (data) {
              subtitle = data;
            },
          ),
          EditColorList()
        ],
      ),
    );
  }
}
