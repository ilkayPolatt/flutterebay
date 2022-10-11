import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class EbayDetail extends StatefulWidget {
  const EbayDetail({super.key});

  @override
  State<EbayDetail> createState() => _EbayDetailState();
}

class _EbayDetailState extends State<EbayDetail> with TickerProviderStateMixin {
  final double iconSize20 = 20;
  final double iconSize40 = 40;
  final double textFontSize = 16;
  final double iconSearchSize35 = 35;

  late final TabController _TabController;
  static List<Tab> _tabBarList = [
    Tab(child: Text(EbayConst.detailTextFeatured)),
    Tab(child: Text(EbayConst.detailTextTech)),
    Tab(
      child: Text(EbayConst.detailTextFashion),
    ),
    Tab(
      child: Text(EbayConst.detailTextHome),
    ),
  ];
  static List<Widget> _tabbarView = [
    Column(
      children: [],
    ),
    EbayDetail(),
    Center(child: Text('Üçüncü Tab')),
    Center(child: Text('Dördüncü Tab')),
    Center(child: Text('Beşinçi Tab')),
    Center(child: Container(color: Colors.grey)),
  ];
  @override
  void initState() {
    super.initState();
    _TabController = TabController(length: _tabBarList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _appbarCircleAvatarIcons(context),
              Padding(padding: EbayConst.paddingtop25),
              _textFieldIcons(),
              _tabbarCategorries(),
              EbayConst.sizedBoxHight15,
              _rowTextFeaturedDealsIconRight(context),
              EbayConst.sizedBoxHight15,
              _rowContainerTextIphone(),
              EbayConst.sizedBoxHight30,
              _rowContainerImages(),
              EbayConst.sizedBoxHight15,
              _containerRedBlueIphoneImageTitle(),
              EbayConst.sizedBoxHight15,
              _containerImagesMoneyTitle(),
              EbayConst.sizedBoxHight15,
              _rowContainerImagesBagMachine(),
              EbayConst.sizedBoxHight15,
              _rowBagMachineTitle(),
              EbayConst.sizedBoxHight15,
              _rowContainerImagesBagMachineMoney()

              
            ],
          ),
        ),
      ),
    );
  }

  Row _appbarCircleAvatarIcons(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _rowCircleAvatar(),
                    EbayConst.sizedBoxWidth15,
                    _rowTxtDeals(context),
                  ],
                ),
                _circleAvatarShoping(),
              ],
            );
  }

  Row _rowContainerImagesBagMachineMoney() {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerImageMoneyText(
                  text: EbayConst.detailTextMachineMoney),
              Padding(padding: EbayConst.paddingright15),
              ContainerImageMoneyText(
                text: EbayConst.detailTextBagMoney,
              ),
            ],
          );
  }

  Row _rowContainerImagesBagMachine() {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    ContainerRightLeftSpaceImage(image: EbayConst.imageDetailMachineCard),
    ContainerRightLeftSpaceImage(image: EbayConst.imageDetailBagCard),
  ],
);
  }

  Row _rowBagMachineTitle() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ContainerImageTitle(
          textFontSize: textFontSize,
          text: EbayConst.detailTextContainerMachineTitle),
      ContainerImageTitle(
          textFontSize: textFontSize,
          text: EbayConst.detailTextContainerBagTitle),
    ],
            );
  }

  Row _rowContainerImagesAmberBagCard() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ContainerRightLeftSpaceImage(image: EbayConst.imageDetailMachineCard),
      ContainerRightLeftSpaceImage(image: EbayConst.imageDetailBagCard),
    ],
  );
  }

  Row _containerImagesMoneyTitle() {
    return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContainerImageMoneyText(
                    text: EbayConst.detailTextRedBlueMoney),
                Padding(padding: EbayConst.paddingright15),
                ContainerImageMoneyText(
                  text: EbayConst.detailTextIphoneMoney,
                ),
              ],
            );
  }

  Row _rowContainerTextIphone() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerRightLeftSpaceImage(
          image: EbayConst.imageDetailIphoneCard,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ContainerImageTitle(
              textFontSize: textFontSize,
              text: EbayConst.detailTextContainerTitle,
            ),
            EbayConst.sizedBoxHight15,
            ContainerImageMoneyText(
              text: EbayConst.detailTextMoney,
            ),
          ],
        )
      ],
    );
  }

  TextField _textFieldIcons() {
    return TextField(
      decoration: InputDecoration(
        fillColor: EbayConst.colorgreyopen,
        filled: true,
        border:
            OutlineInputBorder(borderRadius: EbayConst.borderRadiusCircular80),
        prefixIcon: Icon(
          Icons.search,
          color: EbayConst.colorblack,
          size: iconSearchSize35,
        ),
        suffixIcon: Icon(
          Icons.camera_alt_outlined,
          color: EbayConst.colorblack,
        ),
        hintText: EbayConst.detailTextField,
        hintStyle:
            TextStyle(color: EbayConst.colorblack, fontWeight: FontWeight.w500),
      ),
    );
  }

  Row _containerRedBlueIphoneImageTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerImageTitle(
            textFontSize: textFontSize,
            text: EbayConst.detailTextContainerRedBlueTitle),
        ContainerImageTitle(
            textFontSize: textFontSize,
            text: EbayConst.detailTextContainerIphoneTitle),
      ],
    );
  }

  Row _rowContainerImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContainerRightLeftSpaceImage(image: EbayConst.imageDetailRedBlueCard),
        ContainerRightLeftSpaceImage(image: EbayConst.imageDetailIphoneCard),
      ],
    );
  }

  Row _rowTextFeaturedDealsIconRight(BuildContext context) {
    return Row(
      children: [
        Text(
          EbayConst.detailTextFeaturedDeals,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: EbayConst.colorblack, fontWeight: FontWeight.w600),
        ),
        Icon(
          Icons.arrow_right_alt_outlined,
          size: iconSize40,
        )
      ],
    );
  }

  CircleAvatar _circleAvatarShoping() {
    return CircleAvatar(
      maxRadius: iconSize20,
      backgroundColor: EbayConst.colorgreyopen,
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: EbayConst.colorblack,
          )),
    );
  }

  Text _rowTxtDeals(BuildContext context) {
    return Text(
      EbayConst.detailTextDeals,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: EbayConst.colorblack, fontWeight: FontWeight.w600),
    );
  }

  TabBar _tabbarCategorries() {
    return TabBar(
      tabs: _tabBarList,
      controller: _TabController,
      unselectedLabelColor: EbayConst.colorgrey,
      labelColor: EbayConst.colorblack,
      isScrollable: true,
      labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      indicatorColor: EbayConst.colorblack,
    );
  }

  CircleAvatar _rowCircleAvatar() {
    return CircleAvatar(
      maxRadius: iconSize20,
      backgroundColor: EbayConst.colorgreyopen,
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: EbayConst.colorblack,
          )),
    );
  }
}

class ContainerImageMoneyText extends StatelessWidget {
  const ContainerImageMoneyText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: EbayConst.colorblack, fontWeight: FontWeight.w600),
    );
  }
}

class ContainerImageTitle extends StatelessWidget {
  const ContainerImageTitle({
    Key? key,
    required this.textFontSize,
    required this.text,
  }) : super(key: key);

  final double textFontSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: EbayConst.colorblack, fontSize: textFontSize),
    );
  }
}

class ContainerRightLeftSpaceImage extends StatelessWidget {
  const ContainerRightLeftSpaceImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final double containerHeight = 5;
  final double containerWidth = 2.3;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EbayConst.paddingRightLeft15,
      height: MediaQuery.of(context).size.height / containerHeight,
      width: MediaQuery.of(context).size.width / containerWidth,
      decoration: BoxDecoration(
          color: EbayConst.colorgrey,
          borderRadius: EbayConst.borderRadiusCircular20),
      child: Image.asset(
        image,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
