import 'package:flutter/material.dart';

class HeadlineSixTitleT extends StatelessWidget {
  const HeadlineSixTitleT({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.bold,
          ),
      textAlign: TextAlign.start,
    );
  }
}
