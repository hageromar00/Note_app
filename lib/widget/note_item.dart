import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'flutter',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 10),
                child: Text(
                  'build flutter in learn with hager omar ',
                  style: TextStyle(color: Colors.black.withOpacity(.4)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('5 may 2024',
                  style: TextStyle(color: Colors.black.withOpacity(.6))),
            ),
          ],
        ),
      ),
    );
  }
}
