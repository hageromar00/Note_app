import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  const CustomIcons({super.key,required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(onPressed: (){}, icon: Icon(icon)),
    );
  }
}
