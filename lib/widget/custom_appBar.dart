import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icons, this.onPres,required this.text});
  final IconData icons;
  final void Function()? onPres;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
        CustomIcons(
          icon: icons,
          onPres: onPres,
        )
      ],
    );
  }
}
