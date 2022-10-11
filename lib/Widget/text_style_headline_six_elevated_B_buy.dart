import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class HeadlineSixTitleBuy extends StatelessWidget {
  const HeadlineSixTitleBuy({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(color: EbayConst.colorWhite,
            fontWeight: FontWeight.bold,
          ),
      textAlign: TextAlign.start,
    );
  }
}
