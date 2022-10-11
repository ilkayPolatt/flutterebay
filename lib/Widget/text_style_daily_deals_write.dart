import 'package:flutter/material.dart';

class DailyDealsTextStlyWrite extends StatelessWidget {
  const DailyDealsTextStlyWrite({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
            fontSize: 20,
          ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
