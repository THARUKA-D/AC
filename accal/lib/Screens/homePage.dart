import 'package:flutter/material.dart';
import 'package:accal/Screens/mobileSize.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 600.0) {
        //for mobile phones
        return MobileDevice();
      } else if (constraints.maxWidth > 600.0 && //for tablest
          constraints.maxWidth <= 840.0) {
      } else if (constraints.maxWidth > 840.0) {
        // for pc
        return Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                )),
          ],
        );
      }
    });
  }
}
