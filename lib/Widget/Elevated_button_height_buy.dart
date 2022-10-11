import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class ElevatedButtonHeightBuy extends StatelessWidget {
  const ElevatedButtonHeightBuy(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.widget});
  final void Function() onPressed;
  final Icon icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 17,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: widget,
        style: ElevatedButton.styleFrom(side: BorderSide(width: 2,color: EbayConst.colorBlue),
            shape:
                RoundedRectangleBorder(borderRadius: EbayConst.borderRadius30),
            backgroundColor: EbayConst.colorWhite,
            elevation: 6),
      ),
    );
  }
}
