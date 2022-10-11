import 'package:flutter/material.dart';

class HeadlineSix extends StatelessWidget {
  const HeadlineSix({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.normal,
          ),
      textAlign: TextAlign.center,
    );
  }
}
