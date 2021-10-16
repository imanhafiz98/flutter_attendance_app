import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';

import 'package:flutter_attendance_app/views/auth/register_view.dart';
import 'package:flutter_attendance_app/views/staff/dashboard_view.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  __SplashScreenPageState createState() => __SplashScreenPageState();
}

class __SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      //backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.drag_handle,
      //     color: Colors.cyan,
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(height: 70),
            Container(
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.cyan,
                boxShadow: [
                  BoxShadow(
                    color: Colors.cyan.shade200,
                    blurRadius: 10.0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.lightbulb,
                    color: Colors.yellow,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardPage()));
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.lightbulb,
                    color: Colors.yellow,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterView()));
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
