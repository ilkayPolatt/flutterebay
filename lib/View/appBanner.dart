import 'package:flutter_app_ebay/const/eBay_const.dart';

class AppBanner {
  final int id;
  final String title;
  final String assetsName;

  AppBanner(
    this.id,
    this.title,
    this.assetsName,
  );
}

List<AppBanner> appBannerList = [
  AppBanner(
    0,
    "title",
    EbayConst.imageDetailSimCardZero,
  ),
  AppBanner(
    2,
    "title",
    EbayConst.imageDetailSimCardTwo,
  ),
  AppBanner(
    3,
    "title",
    EbayConst.imageDetailSimCardTree,
  ),
  AppBanner(
    4,
    "title",
    EbayConst.imageDetailSimCardFor,
  ),
  AppBanner(
    5,
    "title",
    EbayConst.imageDetailSimCardFive,
  ),
  AppBanner(
    6,
    "title",
    EbayConst.imageDetailSimCardSix,
  ),
  AppBanner(
    7,
    "title",
    EbayConst.imageDetailSimCardSeven,
  ),
  AppBanner(
    8,
    "title",
    EbayConst.imageDetailSimCardEight,
  ),
  AppBanner(
    0,
    "title",
    EbayConst.imageDetailSimCardZero,
  ),
  AppBanner(
    0,
    "title",
    EbayConst.imageDetailSimCardFive,
  ),
  AppBanner(
    0,
    "title",
    EbayConst.imageDetailSimCardSix,
  ),
];
