import 'package:flutter/material.dart';

class ExploreProductContainer extends StatelessWidget {
  const ExploreProductContainer({super.key, required this.widget});
  final Widget widget;
  final double _height = 6;
  final double _width = 3.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      child: widget,
    );
  }
}
