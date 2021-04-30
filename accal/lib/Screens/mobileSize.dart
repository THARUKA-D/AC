import 'package:flutter/material.dart';

class MobileDevice extends StatefulWidget {
  @override
  _MobileDeviceState createState() => _MobileDeviceState();
}

class _MobileDeviceState extends State<MobileDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BTU Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  // color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                            //height: 50,
                            // color: Colors.green,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  color: Colors.orange,
                                  height: 100,
                                  child: Row(
                                    children: <Widget>[
                                      Text("Room length"),
                                      TextField(
                                        decoration: InputDecoration(),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Text("Room widht"),
                                      TextField()
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Text("Roof height"),
                                      TextField()
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      // Expanded(
                      //     flex: 1,
                      //     child: Container(
                      //       //height: 50,
                      //       color: Colors.orange,
                      //     )),
                    ],
                  ),
                )),
          ],
        ),
        drawer: Drawer(
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              children: <Widget>[
                Expanded(
                    child: ListView(
                  children: <Widget>[
                    Container(
                      child: DrawerHeader(
                        child: Container(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                )),
                Container(
                  // height: 10,
                  color: Colors.green,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      height: 50,
                      alignment: FractionalOffset.bottomCenter,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            );
          }),
        ));
  }
}
