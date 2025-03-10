import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.text, this.maxline = 1,this.onChanged,this.onSaved});
  final String text;
  final int maxline;
  void Function(String?)? onSaved;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is empty';
        }
      },
      cursorColor: Kcolor,
      maxLines: maxline,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Kcolor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Kcolor),
          ),
          hintText: text,
          hintStyle: TextStyle(color: Kcolor)),
    );
  }
}
