import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_attendance_app/views/staff/dashboard_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.drag_handle,
          color: Colors.cyan,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.white,
            child: (ListView(
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.double_arrow,
                        color: Colors.cyan,
                        size: 30.0,
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
