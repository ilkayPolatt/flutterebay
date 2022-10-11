import 'package:flutter/material.dart';

class AppBarIconBottom extends StatelessWidget {
  const AppBarIconBottom(
      {super.key, required this.onPressed, required this.icon});

  final void Function() onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 23,
      backgroundColor: Color.fromARGB(255, 230, 220, 220),
      child: IconButton(onPressed: onPressed, icon: icon,),
    );
  }
}
