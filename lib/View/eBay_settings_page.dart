import 'package:flutter/material.dart';
import 'package:flutter_app_ebay/const/eBay_const.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  final double _height=500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          EbayConst.settingsTitle,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _firstline(),
            Container(
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 211, 208, 208)),
            ),
            _secondline(),
            Container(
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 211, 208, 208)),
            ),
            _thirdline(),
            Container(
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 211, 208, 208)),
            ),
            _paddingColumnText(),
          ],
        ),
      ),
    );
  }

  Padding _paddingColumnText() {

    final double _height=20;
    return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(EbayConst.settingsAbout),
                SizedBox(
                  height: _height,
                ),
                Text(
                  EbayConst.settingsUser,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _height,
                ),
                Text(
                  EbayConst.settingsPri,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _height,
                ),
                Text(
                  EbayConst.settingsDonot,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _height,
                ),
                SizedBox(
                  height: _height,
                ),
                Text(
                  EbayConst.settingsAdver,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _height,
                ),
                SizedBox(
                  height: _height,
                ),
                Text(
                  'Legal',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _height,
                ),
                Text("Verison"),
                Text('6.79.0.1')
              ],
            ),
          );
  }

  Padding _thirdline() {
    final double _height=20;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(EbayConst.settingsSupport),
          SizedBox(
            height: _height,
          ),
          Text(
            EbayConst.settingsCustom,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(EbayConst.settingsAvaible),
        ],
      ),
    );
  }

  Padding _secondline() {
    final double _height=20;

    
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(EbayConst.settingsGeneral),
          SizedBox(
            height: _height,
          ),
          Text(
            EbayConst.settingsTheme,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(EbayConst.settingsBatery),
          SizedBox(
            height: _height,
          ),
          Text(
            EbayConst.settingsContry,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            EbayConst.settingsTr,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: _height,
          ),
          Text(
            EbayConst.settingsTrans,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Padding _firstline() {
    final double _height=20;
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 18),
      child: Column(
        children: [
          Text(EbayConst.settingsAccount),
          SizedBox(
            height: _height,
          ),
          Text(
            EbayConst.settingsSign,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: _height,
          ),
        ],
      ),
    );
  }
}
