import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_appBar.dart';
import 'package:note_app/widget/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key});

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
          const CustomAppBar(icons: Icons.check),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            text: 'title',
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
          )
        ],
      ),
    );
  }
}
