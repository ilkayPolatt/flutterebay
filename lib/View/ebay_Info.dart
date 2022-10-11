import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/View/appBanner.dart';
import 'package:flutter_app_ebay/View/banner_item.dart';
import 'package:flutter_app_ebay/View/eBay_Home.dart';
import 'package:flutter_app_ebay/View/page_view.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class EbayInfo extends StatefulWidget {
  EbayInfo({super.key});

  @override
  State<EbayInfo> createState() => _EbayInfoState();
}

class _EbayInfoState extends State<EbayInfo> {
  final double iconSize40 = 40;

  final double iconSize60 = 60;

  final double fontSizeText = 32;

  final double containerHeight7 = 7;

  final double containerWidth3 = 3.5;
  final double containerHight3 = 3;

  final double containerWidth3_1 = 3.1;

  final double containerWidth1 = 1;

  final double ElevatedButtonHeight = 60;

  final double ElevatedButtonWidth = 50;

  final double ebayHeight = 130;

  final double ebayWidth = 130;

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: EbayConst.borderRadiusCircular20,
        child: Scaffold(
          backgroundColor: EbayConst.colorwhite,
          body: Column(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: EbayConst.paddingInfoColumn,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _rowIconClose(),
                          _titleImageEbay(),
                          EbayConst.sizedBoxWidth30
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height /
                            containerHight3,
                        width:
                            MediaQuery.of(context).size.width / containerWidth1,
                        decoration: BoxDecoration(color: EbayConst.colorwhite),
                        child: PageView.builder(
                          onPageChanged: (index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          controller: PageController(viewportFraction: 1),
                          itemCount: appBannerListes.length,
                          itemBuilder: (context, index) {
                            return BannerItem(
                                appBanner: appBannerListes[index]);
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                              appBannerListes.length,
                              (index) => Indicator(
                                  isActive:
                                      _selectedIndex == index ? true : false))
                        ],
                      ),
                      Padding(padding: EbayConst.paddingtop25),
                      _elavatedButtonSignIn(context),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    _rowDwiderText(context),
                    EbayConst.sizedBoxHight15,
                    _rowCircleAvatarFacebookGoogle(),
                  ],
                ),
              ),
              _infoTextProblem(context),
              EbayConst.sizedBoxHight30,
              _infoTextAccount(context),
              EbayConst.sizedBoxHight30,
            ],
          ),
        ),
      ),
    );
  }

  CircleAvatar _circleAvatarNotifications() {
    return CircleAvatar(
      maxRadius: iconSize60,
      child: Icon(
        Icons.notifications_none,
        size: iconSize60,
      ),
    );
  }

  Row _rowCircleAvatarFacebookGoogle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        containerCircleAvatarImage(
            color: EbayConst.colorgrey, image: EbayConst.imageGoogle),
        EbayConst.sizedBoxWidth30,
        containerCircleAvatarImage(
            color: EbayConst.colorblue, image: EbayConst.imageFacebook),
      ],
    );
  }

  Text _infoTextAccount(BuildContext context) {
    return Text(
      EbayConst.infoTextAccount,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: EbayConst.colorblue, fontWeight: FontWeight.w600),
    );
  }

  Text _infoTextProblem(BuildContext context) {
    return Text(
      EbayConst.infoTextProblem,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: EbayConst.colorblack, fontWeight: FontWeight.w400),
    );
  }

  Text _infoTextExplanation(BuildContext context) {
    return Text(EbayConst.infoTextExplanation,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: EbayConst.colorblack,
            ));
  }

  Text _infoTextTitle(BuildContext context) {
    return Text(EbayConst.infoTextTitle,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: EbayConst.colorblack,
            fontWeight: FontWeight.w700,
            fontSize: fontSizeText));
  }

  ElevatedButton _elavatedButtonSignIn(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(ElevatedButtonWidth, ElevatedButtonHeight),
          shape: RoundedRectangleBorder(
              borderRadius: EbayConst.borderRadiusCircular50)),
      onPressed: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => EbayHome())));},
      child: Center(
        child: Text(
          EbayConst.infoTextSignIn,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: EbayConst.colorwhite, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Row _rowDwiderText(BuildContext context) {
    return Row(children: <Widget>[
      _expandedDwiderIcon(),
      Text(
        EbayConst.infoTextOrSign,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: EbayConst.colorblack, fontWeight: FontWeight.w400),
      ),
      _expandedDwiderIcon(),
    ]);
  }

  Expanded _expandedDwiderIcon() {
    return Expanded(
      child: Divider(color: EbayConst.colorgrey),
    );
  }

  Row _rowIconClose() {
    return Row(
      children: [
        Icon(
          Icons.close,
          size: iconSize40,
        ),
      ],
    );
  }

  Row _titleImageEbay() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: ebayHeight,
            width: ebayWidth,
            child: Image.asset(
              EbayConst.imageEbay,
            )),
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
    return Container(
      width: isActive ? 22.0 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          borderRadius: EbayConst.borderRadiusCircular20),
    );
  }
}

class containerCircleAvatarImage extends StatelessWidget {
  const containerCircleAvatarImage({
    Key? key,
    required this.color,
    required this.image,
  }) : super(key: key);

  final double maxRadius50 = 36;
  final double maxRadius35 = 18;

  final Color color;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: EbayConst.borderRadiusCircular80,
          border: Border.all(
            color: color,
          )),
      child: CircleAvatar(
        maxRadius: maxRadius50,
        backgroundColor: EbayConst.colorwhite,
        child: CircleAvatar(
          maxRadius: maxRadius35,
          backgroundColor: EbayConst.colorwhite,
          child: Image.asset(image),
        ),
      ),
    );
  }
}

class textEbayTitle extends StatelessWidget {
  const textEbayTitle({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline3
          ?.copyWith(color: color, fontWeight: FontWeight.w600),
    );
  }
}
