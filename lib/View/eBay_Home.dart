import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/View/eBay_Daily_Deals.dart';
import 'package:flutter_app_ebay/View/eBay_categories.dart';
import 'package:flutter_app_ebay/View/eBay_product_details.dart';
import 'package:flutter_app_ebay/View/ebay_Detail.dart';
import 'package:flutter_app_ebay/Widget/Elevated_button_height.dart';
import 'package:flutter_app_ebay/Widget/Elevated_button_height_register.dart';
import 'package:flutter_app_ebay/Widget/Excplore_text_style.dart';
import 'package:flutter_app_ebay/Widget/Explore_Categories_container.dart';
import 'package:flutter_app_ebay/Widget/appBar_icon_bottom.dart';
import 'package:flutter_app_ebay/Widget/daily_deals_Product_container.dart';
import 'package:flutter_app_ebay/Widget/text_style_daily_deals.dart';
import 'package:flutter_app_ebay/Widget/text_style_elevated_button_pages.dart';
import 'package:flutter_app_ebay/Widget/text_style_headline_six.dart';
import 'package:flutter_app_ebay/Widget/text_style_headline_six_elevated_button_register.dart';
import 'package:flutter_app_ebay/Widget/text_style_headline_six_title.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class EbayHome extends StatefulWidget {
  const EbayHome({super.key});

  @override
  State<EbayHome> createState() => _EbayHomeState();
}

class _EbayHomeState extends State<EbayHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appBarRowIconsImageLogo(context),
              EbayConst.sizedBoxH10,
              _textFieldIcons(),
              EbayConst.sizedBoxH10,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _rowElevatedIconButtonsPages(),
              ),
              EbayConst.sizedBoxH20,
              HeadlineSix(text: EbayConst.registerText),
              EbayConst.sizedBoxH10,
              _rowElevatedButtonRegister(),
              EbayConst.sizedBoxH40,
              _rowHomeTitle(context),
              EbayConst.sizedBoxH20,
              _scrollRowContainerColmunProduct(),
              EbayConst.sizedBoxH40,
              HeadlineSmallTitle(text: EbayConst.homeExplorePoupularCategories),
              EbayConst.sizedBoxH20,
              _columnExploreCategoriesRowRow(),
              EbayConst.sizedBoxH40,
              _containerTextLikeIcons(context),
            ],
          ),
        ),
      ),
    );
  }

  Container _containerTextLikeIcons(BuildContext context) {
    final double _height = 5;
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          HeadlineSix(text: EbayConst.homeLikePage),
          EbayConst.sizedBoxH20,
          _rowLikeDontLikeIcons(),
        ],
      ),
    );
  }

  Row _rowLikeDontLikeIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.thumb_up_alt_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.thumb_down_alt_outlined),
        ),
      ],
    );
  }

  Column _columnExploreCategoriesRowRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _rowExploreCategories(),
        EbayConst.sizedBoxH20,
        _rowExploreCategoriesTwo(),
      ],
    );
  }

  Row _rowExploreCategoriesTwo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ExploreProductContainer(
          widget: Column(
            children: [
              Image.asset(EbayConst.imageExploreCollectibles),
              ExploreHeadlineSix(text: EbayConst.homeCollectibles),
            ],
          ),
        ),
        ExploreProductContainer(
          widget: Column(
            children: [
              Image.asset(EbayConst.imageExploreSmartphones),
              ExploreHeadlineSix(text: EbayConst.homeSmartPhones),
            ],
          ),
        ),
        ExploreProductContainer(
          widget: Column(
            children: [
              Image.asset(EbayConst.imageExploreFishing),
              ExploreHeadlineSix(text: EbayConst.homeFishing),
            ],
          ),
        ),
      ],
    );
  }

  Row _rowExploreCategories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ExploreProductContainer(
          widget: Column(
            children: [
              Image.asset(EbayConst.imageExploreSneakers),
              ExploreHeadlineSix(text: EbayConst.homeSneakers),
            ],
          ),
        ),
        ExploreProductContainer(
          widget: Column(
            children: [
              Image.asset(EbayConst.imageExploreKorean),
              ExploreHeadlineSix(text: EbayConst.homeKorean),
            ],
          ),
        ),
        ExploreProductContainer(
          widget: Column(
            children: [
              Image.asset(EbayConst.imageExploreWristwatches),
              ExploreHeadlineSix(text: EbayConst.homeWristwatches),
            ],
          ),
        ),
      ],
    );
  }

  SingleChildScrollView _scrollRowContainerColmunProduct() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _containerColumnProduct(),
          EbayConst.sizedBoxW5,
          _containerColmunProductZeor(),
          EbayConst.sizedBoxW5,
          _containerColumnProduct(),
          EbayConst.sizedBoxW5,
          _containerColmunProductZeor(),
          EbayConst.sizedBoxW5,
          _containerColumnProduct(),
          EbayConst.sizedBoxW5,
          _containerColmunProductZeor(),
        ],
      ),
    );
  }

  DailyDealsProductContainer _containerColmunProductZeor() {
    return DailyDealsProductContainer(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            EbayConst.imageDailyDealsProductZeroOne,
            fit: BoxFit.cover,
          ),
          EbayConst.sizedBoxH5,
          DailyDealsTextStly(text: EbayConst.homeDailyDealsText),
          EbayConst.sizedBoxH5,
          HeadlineSmallTitle(text: EbayConst.homeDailyDealsTextFeeZeroOne),
        ],
      ),
    );
  }

  DailyDealsProductContainer _containerColumnProduct() {
    return DailyDealsProductContainer(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: ((context) => EbayProductDetails())));},
            child: Image.asset(
              EbayConst.imageDailyDealsProduct,
              fit: BoxFit.cover,
            ),
          ),
          EbayConst.sizedBoxH5,
          DailyDealsTextStly(text: EbayConst.homeDailyDealsText),
          EbayConst.sizedBoxH5,
          HeadlineSmallTitle(text: EbayConst.homeDailyDealsTextFee),
        ],
      ),
    );
  }

  Row _rowHomeTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeadlineSmallTitle(text: EbayConst.homeDailyDealsTitle),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => DailyDeals())));
          },
          child: ElevatedButtonPageText(text: EbayConst.homeSeeAll),
        ),
      ],
    );
  }

  Row _rowElevatedButtonRegister() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButtonHeightRegister(
          onPressed: () {},
          widget:
              HeadlineSixRegisterButton(text: EbayConst.elevatedButtonRegister),
        ),
        ElevatedButtonHeightRegister(
          onPressed: () {},
          widget:
              HeadlineSixRegisterButton(text: EbayConst.elevatedButtonSignin),
        ),
      ],
    );
  }

  Row _rowElevatedIconButtonsPages() {
    return Row(
      children: [
        ElevatedButtonHeight(
          onPressed: () {},
          icon: Icon(
            Icons.sell_outlined,
            color: EbayConst.colorBlack,
          ),
          widget: ElevatedButtonPageText(text: EbayConst.elevatedButtonSelling),
        ),
        EbayConst.sizedBoxW10,
        ElevatedButtonHeight(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: ((context) => EbayDetail())));},
          icon: Icon(
            Icons.bolt_outlined,
            color: EbayConst.colorBlack,
          ),
          widget: ElevatedButtonPageText(text: EbayConst.elevatedButtonDeals),
        ),
        EbayConst.sizedBoxW10,
        ElevatedButtonHeight(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage(),));},
          icon: Icon(
            Icons.category_outlined,
            color: EbayConst.colorBlack,
          ),
          widget:
              ElevatedButtonPageText(text: EbayConst.elevatedButtonCategories),
        ),
        EbayConst.sizedBoxW10,
        ElevatedButtonHeight(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: EbayConst.colorBlack,
          ),
          widget: ElevatedButtonPageText(text: EbayConst.elevatedButtonSaved),
        ),
      ],
    );
  }

  TextField _textFieldIcons() {
    return TextField(
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: EbayConst.borderRadius20),
        hintText: EbayConst.textFieldHintText,
        hintStyle: TextStyle(color: EbayConst.colorBlack),
        filled: true,
        fillColor: EbayConst.colorWhite,
        prefixIcon: Icon(
          Icons.search,
          color: EbayConst.colorBlack,
        ),
        suffixIcon: SizedBox(
          height: 10,
          width: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
              Icons.mic_none,
              color: EbayConst.colorBlack,
            ),
            Icon(
              Icons.mic_none,
              color: EbayConst.colorBlack,
            ),
            
            ],
          
          ),
        ),
        isDense: true,
      ),
    );
  }

  Row _appBarRowIconsImageLogo(BuildContext context) {
    final double _height = 12;
    final double _width = 6;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppBarIconBottom(
              onPressed: () {},
              icon: Icon(
                Icons.dehaze_rounded,
                color: EbayConst.colorBlack,
                size: 30,
              ),
            ),
            EbayConst.sizedBoxW10,
            SizedBox(
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width / _width,
              child: Image.asset(
                EbayConst.imageAppBarLogo,
              ),
            ),
          ],
        ),
        AppBarIconBottom(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: EbayConst.colorBlack,
            size: 30,
          ),
        ),
      ],
    );
  }
}
