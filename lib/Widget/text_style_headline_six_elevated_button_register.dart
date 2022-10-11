import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class HeadlineSixRegisterButton extends StatelessWidget {
  const HeadlineSixRegisterButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.normal,
            color: EbayConst.colorBlue,
          ),
      textAlign: TextAlign.center,
    );
  }
}
