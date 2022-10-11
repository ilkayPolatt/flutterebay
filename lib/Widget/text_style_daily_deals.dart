import 'package:flutter/material.dart';

class DailyDealsTextStly extends StatelessWidget {
  const DailyDealsTextStly({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontSize: 19,
          ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
