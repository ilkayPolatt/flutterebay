import 'package:flutter/material.dart';

class ExploreHeadlineSix extends StatelessWidget {
  const ExploreHeadlineSix({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 17
           
          ),
      textAlign: TextAlign.center,
    );
  }
}
