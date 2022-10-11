import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/View/eBay_Home.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});
  final double _heightTopline = 20;
  final double _heightLine = 10;
  final double _paddingAll = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => EbayHome())));
          },
          icon: Icon(Icons.arrow_back,color: EbayConst.colorBlack,),
        ),
        title: Text(
          EbayConst.categoriesTitle,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _topline(context),
              SizedBox(
                height: _heightTopline,
              ),
              _line(context),
              SizedBox(
                height: _heightLine,
              ),
              _topline(context),
              SizedBox(
                height: _heightTopline,
              ),
              _line(context),
              SizedBox(
                height: _heightLine,
              ),
              _topline(context),
              SizedBox(
                height: _heightTopline,
              ),
              _line(context),
              SizedBox(
                height: _heightLine,
              ),
              _topline(context),
              SizedBox(
                height: _heightTopline,
              ),
              _line(context),
              SizedBox(
                height: _heightLine,
              ),
              _topline(context),
              SizedBox(
                height: _heightTopline,
              ),
              _line(context),
              SizedBox(
                height: _heightLine,
              ),
              _topline(context),
              SizedBox(
                height: _heightTopline,
              ),
              _line(context),
              SizedBox(
                height: _heightLine,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _line(BuildContext context) {
    final double _height = 500;
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color.fromARGB(255, 211, 208, 208)),
    );
  }

  Row _topline(BuildContext context) {
    final double _height = 15;
    final double _width = 10;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            _antiques(context),
            SizedBox(
              height: _height,
            ),
            Text(EbayConst.categoriesTitleAnt)
          ],
        ),
        SizedBox(
          width: _width,
        ),
        Column(
          children: [
            _art(context),
            SizedBox(
              height: _height,
            ),
            Text(EbayConst.categoriesTitleArt)
          ],
        ),
      ],
    );
  }

  Container _art(BuildContext context) {
    final double _height = 7;
    final double _width = 2.6;

    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: EbayConst.borderRadius20),
      child: ClipRRect(
        borderRadius: EbayConst.borderRadius20,
        child: Image.asset(
          EbayConst.imageCategoriesOne,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container _antiques(BuildContext context) {
    final double _height = 7;
    final double _width = 2.6;

    return Container(
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width / _width,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: EbayConst.borderRadius20),
      child: ClipRRect(
        borderRadius: EbayConst.borderRadius20,
        child: Image.asset(
          EbayConst.imageCategoriesZero,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
