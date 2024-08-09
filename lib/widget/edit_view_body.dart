import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_appBar.dart';
import 'package:note_app/widget/custom_text_field.dart';
class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(icons: Icons.check),
            SizedBox(
              height: 30,
            ),
            CustomTextField(text: 'title'),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              text: 'content',
              maxline: 5,
            )
          ],
        ),
      );
  }
}