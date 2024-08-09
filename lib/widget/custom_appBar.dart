import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icons});
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 20),
        ),
        CustomIcons(icon: icons)
      ],
    );
  }
}
