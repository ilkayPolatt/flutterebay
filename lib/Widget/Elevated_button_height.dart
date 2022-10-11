import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class ElevatedButtonHeight extends StatelessWidget {
  const ElevatedButtonHeight(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.widget});
  final void Function() onPressed;
  final Icon icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: widget,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: EbayConst.borderRadius20),
        backgroundColor: Color.fromARGB(255, 187, 229, 235),
        elevation: 6
      ),
    );
  }
}
