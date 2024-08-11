import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/note_cubit/note_cubits.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.not});
  final NoteModel not;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditView(note: not,);
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
            color: Color(not.color), 
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                not.title,
                style: const TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 10),
                child: Text(
                  not.subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(.4)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    not.delete();
                    BlocProvider.of<NoteViewCubit>(context).fetchNote();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(not.date,
                  style: TextStyle(color: Colors.black.withOpacity(.6))),
            ),
          ],
        ),
      ),
    );
  }
}
