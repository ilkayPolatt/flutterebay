import 'package:flutter/material.dart';
class ElevatedButtonPageText extends StatelessWidget {
  const ElevatedButtonPageText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold),);
  }
}