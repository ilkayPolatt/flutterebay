import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class ElevatedButtonHeightBuyNow extends StatelessWidget {
  const ElevatedButtonHeightBuyNow(
      {super.key, required this.onPressed, required this.widget});
  final void Function() onPressed;
  final Widget widget;
  final double _height = 16;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width ,
      child: ElevatedButton(
        onPressed: onPressed,
        child: widget,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: EbayConst.borderRadius40,
              
            ),
            elevation: 6,
            backgroundColor: EbayConst.colorBlue),
      ),
    );
  }
}
