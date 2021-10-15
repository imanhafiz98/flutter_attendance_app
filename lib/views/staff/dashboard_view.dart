import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50.0),
                Text(
                  'Hello Hafiz',
                  style: TextStyle(
                    color: Colors.cyan,
                    letterSpacing: 0.5,
                    fontSize: 40.0,
                    fontFamily: 'opensans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Monday 21-5-2022',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 0.5,
                    fontFamily: 'opensans',
                    fontSize: 10.0,
                  ),
                ),
                SizedBox(height: 100.0),
              ],
            ),
          ),

          //start horizontal for container and card
          SizedBox(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 100,
                  width: 250,
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.airline_seat_recline_normal,
                            color: Colors.cyan,
                          ),
                          title: const Text(
                            'Check-in',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'opensans',
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          subtitle: Text(
                            'Not check-in yet',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'opensans',
                                backgroundColor: Colors.red),
                          ),
                        ),
                        SizedBox(height: 100),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.double_arrow,
                                color: Colors.cyan,
                                size: 30.0,
                              ),
                              onPressed: () {
                                Alert(
                                  context: context,
                                  type: AlertType.warning,
                                  title: "CHECK-IN",
                                  desc: "Are you sure want to continue?",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "YES",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'opensans',
                                            fontSize: 15),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      color: Color.fromRGBO(0, 179, 134, 1.0),
                                    ),
                                    DialogButton(
                                      child: Text(
                                        "NO",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'opensans',
                                            fontSize: 15),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      color: Colors.red,
                                    )
                                  ],
                                ).show();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 250,
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.free_breakfast,
                            color: Colors.white,
                          ),
                          title: const Text(
                            'Break',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'opensans',
                            ),
                          ),
                          subtitle: Text(
                            'Not break yet',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'opensans',
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            SpinKitDualRing(
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 250,
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Color(0x00000000),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.free_breakfast,
                            color: Colors.cyan,
                          ),
                          title: const Text('Break'),
                          subtitle: Text(
                            'Not break yet',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        SizedBox(height: 100),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            SpinKitDualRing(
                              color: Colors.cyan,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 250,
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  color: Color(0x00000000),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.free_breakfast,
                            color: Colors.white,
                          ),
                          title: const Text(
                            'Break',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'opensans',
                            ),
                          ),
                          subtitle: Text(
                            'Not break yet',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'opensans',
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            SpinKitDualRing(
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.white,
        height: 75.0,
        items: <Widget>[
          Icon(Icons.qr_code_scanner, size: 30, color: Colors.cyan),
          Icon(Icons.list, size: 30, color: Colors.cyan),
          Icon(Icons.person, size: 30, color: Colors.cyan),
        ],
        animationDuration: Duration(milliseconds: 800),
      ),
    );
  }
}
