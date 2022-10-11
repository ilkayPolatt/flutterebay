import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/View/appBanner.dart';
import 'package:flutter_app_ebay/Widget/Elevated_button_height_add.dart';
import 'package:flutter_app_ebay/Widget/Elevated_button_height_buy.dart';
import 'package:flutter_app_ebay/Widget/Elevated_button_height_buy_now.dart';
import 'package:flutter_app_ebay/Widget/appBar_icon_bottom.dart';
import 'package:flutter_app_ebay/Widget/text_style_daily_deals.dart';
import 'package:flutter_app_ebay/Widget/text_style_daily_deals_write.dart';
import 'package:flutter_app_ebay/Widget/text_style_elevated_button_pages.dart';
import 'package:flutter_app_ebay/Widget/text_style_headline_six_elevated_B_buy.dart';
import 'package:flutter_app_ebay/Widget/text_style_headline_six_title.dart';
import 'package:flutter_app_ebay/Widget/text_style_headline_six_title_t.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class EbayProductDetails extends StatefulWidget {
  const EbayProductDetails({super.key});

  @override
  State<EbayProductDetails> createState() => _EbayProductDetailsState();
}

class _EbayProductDetailsState extends State<EbayProductDetails> {
  int _selectedindex = 0;

  int _countValue = 0;

  final double _horizontal16 = 16.0;
  final double _vertical16 = 16.0;
  final double _top50 = 50;
  final double _left10 = 10;
  final double _right10 = 10;

  final double _heightC = 2;

  final double _heightPageNo = 35;
  final double _widthPageNo = 5;

  PageController pageController = PageController(initialPage: 0);

  //final _pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: _top50, left: _left10, right: _right10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appBarRowRowIconBtmTxt(),
              EbayConst.sizedBoxH10,
              _containerPageview(context),
              EbayConst.sizedBoxH10,
              _rowIconButtonFavorita(),
              _rowPageviewIndicator(),
              EbayConst.sizedBoxH15,
              HeadlineSixTitleT(text: EbayConst.detailProductTitle),
              EbayConst.sizedBoxH5,
              DailyDealsTextStly(text: EbayConst.detailProduct360),
              EbayConst.sizedBoxH10,
              _rowRedPocketStore(),
              EbayConst.sizedBoxH10,
              _rowColumnRowRowTexts(),
              EbayConst.sizedBoxH15,
              _rowTextNate(),
              _dividerColumnRow(),
              EbayConst.sizedBoxH15,
              _paddingRowContainerGesturSelect(context),
              EbayConst.sizedBoxH15,
              _paddingRowContainerGesturNo(context),
              EbayConst.sizedBoxH25,
              _elevatedButtonBuy(),
              EbayConst.sizedBoxH5,
              _elevatedButtonaddto(),
              EbayConst.sizedBoxH5,
              _elvtdButnAddtoWacth(),
              EbayConst.sizedBoxH40,

            ],
          ),
        ),
      ),
    );
  }

  ElevatedButtonHeightAdd _elevatedButtonaddto() {
    return ElevatedButtonHeightAdd(
              onPressed: () {},
              widget: DailyDealsTextStly(
                  text: EbayConst.detailElevatedButtontextadd),
            );
  }

  ElevatedButtonHeightBuyNow _elevatedButtonBuy() {
    return ElevatedButtonHeightBuyNow(
              onPressed: () {},
              widget: HeadlineSixTitleBuy(
                  text: EbayConst.detailElevatedButtontextBuy),
            );
  }

  ElevatedButtonHeightBuy _elvtdButnAddtoWacth() {
    return ElevatedButtonHeightBuy(
      onPressed: () {},
      icon: Icon(Icons.favorite_border_outlined, color: EbayConst.colorBlue),
      widget: DailyDealsTextStly(text: EbayConst.detailElevatedButtontextWact),
    );
  }

  ElevatedButtonHeightBuy _elevatedBtnAddtocard() {
    return ElevatedButtonHeightBuy(
      onPressed: () {},
      icon: Icon(Icons.favorite_border_outlined, color: EbayConst.colorBlue),
      widget: DailyDealsTextStly(text: EbayConst.detailElevatedButtontextWact),
    );
  }

  Padding _paddingRowContainerGesturNo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                EbayConst.detailQuan,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                EbayConst.detailavabile,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: EbayConst.colorBlack, width: 1),
            ),
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  EbayConst.detailSelectone,
                  style: Theme.of(context).textTheme.headline6,
                ),
                GestureDetector(
                    onTapDown: (details) {
                      showModalBottomSheet(
                        isScrollControlled: false,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: EbayConst.colorBlack, width: 2),
                          borderRadius: BorderRadius.only(
                            topLeft: EbayConst.radius15,
                            topRight: EbayConst.radius15,
                          ),
                        ),
                        backgroundColor: EbayConst.colorWhite,
                        context: context,
                        builder: ((context) => Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  children: [],
                                ),
                              ),
                            )),
                      );
                    },
                    child: Icon(Icons.arrow_drop_down_sharp))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _paddingRowContainerGesturSelect(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            EbayConst.detailSimType,
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: EbayConst.colorBlack, width: 1)),
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  EbayConst.detailSelect,
                  style: Theme.of(context).textTheme.headline6,
                ),
                GestureDetector(
                    onTapDown: (details) {
                      showModalBottomSheet(
                        isScrollControlled: false,
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: EbayConst.colorBlack, width: 2),
                          borderRadius: BorderRadius.only(
                            topLeft: EbayConst.radius15,
                            topRight: EbayConst.radius15,
                          ),
                        ),
                        backgroundColor: EbayConst.colorWhite,
                        context: context,
                        builder: ((context) => Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  children: [],
                                ),
                              ),
                            )),
                      );
                    },
                    child: Icon(Icons.arrow_drop_down_sharp))
              ],
            ),
          ),
        ],
      ),
    );
  }

  IntrinsicHeight _dividerColumnRow() {
    return IntrinsicHeight(
      child: Column(
        children: [
          Divider(color: EbayConst.colorBlack, thickness: 1, height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButtonPageText(text: EbayConst.detailSold),
              VerticalDivider(
                color: EbayConst.colorBlack,
                endIndent: 15,
                indent: 15,
                thickness: 1,
                width: 80,
              ),
              ElevatedButtonPageText(text: EbayConst.detailReturn),
            ],
          ),
          Divider(
            color: EbayConst.colorBlack,
            thickness: 1,
            height: 10,
          ),
        ],
      ),
    );
  }

  Row _rowTextNate() {
    return Row(
      children: [
        Text(EbayConst.detailNateText),
        EbayConst.sizedBoxW5,
        ElevatedButtonPageText(text: EbayConst.detailNate),
      ],
    );
  }

  Row _rowColumnRowRowTexts() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                HeadlineSmallTitle(text: EbayConst.detailTextFee),
                DailyDealsTextStly(text: EbayConst.detailTextFeeS),
              ],
            ),
            DailyDealsTextStly(text: EbayConst.detailTextFeeSe),
            Row(
              children: [
                DailyDealsTextStlyWrite(text: EbayConst.detailTextFeeSee),
                EbayConst.sizedBoxW5,
                DailyDealsTextStly(text: EbayConst.detailTextFeeSeer),
              ],
            ),
          ],
        )
      ],
    );
  }

  Row _rowIconButtonFavorita() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 206, 200, 200),
          minRadius: 18,
          child: Icon(
            Icons.favorite_border_outlined,
            size: 20,
            color: EbayConst.colorBlue,
          ),
        ),
      ],
    );
  }

  Row _rowRedPocketStore() {
    return Row(
      children: [
        Column(
          children: [
            Icon(Icons.settings_input_antenna),
            Icon(Icons.sim_card_outlined),
          ],
        ),
        EbayConst.sizedBoxW10,
        Column(
          children: [
            Text(EbayConst.detailProductPocket,
                style: Theme.of(context).textTheme.subtitle1),
            Text(
              EbayConst.detailProductfed,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: EbayConst.colorPurple),
            )
          ],
        ),
      ],
    );
  }

  Row _rowPageviewIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          appBannerList.length,
          (index) =>
              Indicator(isActive: _selectedindex == index ? true : false),
        ),
      ],
    );
  }

  Container _containerPageview(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: _vertical16),
      height: MediaQuery.of(context).size.height / _heightC,
      width: MediaQuery.of(context).size.width,
      child: _pageViewContainerImage(),
    );
  }

  PageView _pageViewContainerImage() {
    return PageView.builder(
      controller: pageController,
      onPageChanged: (index) {
        setState(() {
          _selectedindex = index;
        });
      },
      itemCount: appBannerList.length,
      itemBuilder: (context, index) {
        return _containerImage(index, context);
      },
    );
  }

  Container _containerImage(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: _horizontal16),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(appBannerList[index].assetsName),
            fit: BoxFit.fill),
      ),
      child: _columnContainerPageNo(context),
    );
  }

  Column _columnContainerPageNo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: EbayConst.colorGrey,
              borderRadius: EbayConst.borderRadius5),
          height: MediaQuery.of(context).size.height / _heightPageNo,
          width: MediaQuery.of(context).size.width / _widthPageNo,
          child: Center(
            child: Text(
              "${_selectedindex+1} Of ${appBannerList.length}",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: EbayConst.colorWhite),
            ),
          ),
        ),
        _rowPageRoutetIconButton(),
      ],
    );
  }

  Padding _rowPageRoutetIconButton() {
    final double _top150 = 150;
    return Padding(
      padding: EdgeInsets.only(top: _top150),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _selectedindex > 0 ? _selectedindex = _selectedindex-- : null;

                /* if (_selectedindex > 0) {
                  _selectedindex = _selectedindex--;
                  /*
                  Tek TEk denenmiştir
                  //_countValue=_selectedindex--;
                  //_selectedindex=_countValue--;

                  //_countValue=_countValue--;                  */

                }

                */

                pageController.previousPage(
                    duration: EbayConst.durationLow, curve: Curves.slowMiddle);
              });
            },
            icon: Icon(
              Icons.swipe_left_rounded,
              size: 35,
              color: EbayConst.colorBlue,
            ),
          ),
          IconButton(
            onPressed: () {
              /*

                tek tek denemiştir

                 // _selectedindex=_countValue++;

                 //_countValue=_selectedindex++;

                 */

              _selectedindex = _selectedindex++;

              pageController.nextPage(
                  duration: EbayConst.durationLow, curve: Curves.slowMiddle);
            },
            icon: Icon(
              Icons.swipe_right_rounded,
              size: 35,
              color: EbayConst.colorBlue,
            ),
          ),
        ],
      ),
    );
  }

  Row _appBarRowRowIconBtmTxt() {
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
            HeadlineSmallTitle(text: EbayConst.detailAppBarTitle),
          ],
        ),
        EbayConst.sizedBoxW10,
        AppBarIconBottom(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: EbayConst.colorBlack,
            size: 30,
          ),
        ),
        AppBarIconBottom(
          onPressed: () {},
          icon: Icon(
            Icons.share_outlined,
            color: EbayConst.colorBlack,
            size: 30,
          ),
        ),
        AppBarIconBottom(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: EbayConst.colorBlack,
            size: 30,
          ),
        ),
        AppBarIconBottom(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert_outlined,
            color: EbayConst.colorBlack,
            size: 30,
          ),
        ),
      ],
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
    final double _horizontal = 4.0;
    final double _height = 8.0;

    return AnimatedContainer(
      //geçiş animasyonu kaç saniyede geçtigini hissetirme degeri
      duration: EbayConst.durationLow,

      margin: EdgeInsets.symmetric(horizontal: _horizontal),
      width: isActive ? 22.0 : 8.0,
      height: _height,
      decoration: BoxDecoration(
        color: isActive ? EbayConst.colorBlack : EbayConst.colorGrey,
        borderRadius: EbayConst.borderRadius10,
      ),
    );
  }
}
