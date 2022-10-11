import 'package:flutter/material.dart';

class DailyDealsProductContainer extends StatelessWidget {
  const DailyDealsProductContainer({super.key, required this.widget});
  final Widget widget;
  final double _height = 2.7;
  final double _width = 2.2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      child: widget,
    );
  }
}
