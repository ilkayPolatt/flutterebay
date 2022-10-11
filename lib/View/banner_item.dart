import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/View/page_view.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';



class BannerItem extends StatelessWidget {
  final AppBanners appBanner;
  const BannerItem({
    Key? key,
    required this.appBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
          color: EbayConst.colorwhite,
          image: DecorationImage(
              image: AssetImage(appBanner.assetsName), fit: BoxFit.cover)),
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: isActive ? 22.0 : 8,
          height: 8,
          decoration: BoxDecoration(
              color: isActive ? Colors.white : EbayConst.colorgrey,
              borderRadius: EbayConst.borderRadiusCircular20),
        )
      ],
    );
  }
}