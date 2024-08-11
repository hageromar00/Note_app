import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  const CustomIcons({super.key, required this.icon,this.onPres});
  final IconData icon;
 final void Function()? onPres;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(onPressed: onPres, icon: Icon(icon)),
    );
  }
}
