import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePage extends StatefulWidget {
  @override
  __ProfilePageState createState() => __ProfilePageState();
}

class __ProfilePageState extends State<ProfilePage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      //backgroundColor: Colors.white,
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      appBar: AppBar(
        actions: <Widget>[
          Container(
            //color: Colors.white,
            child: new IconButton(
              icon: new Icon(
                Icons.tune,
                color: Colors.cyan,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   PageTransition(
                //       type: PageTransitionType.rightToLeft,
                //       duration: Duration(milliseconds: 400),
                //       child: EditProfilePage()),
                // );
              },
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.cyan.shade200,
                  blurRadius: 20.0,
                  offset: Offset(0, 10),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Color.fromRGBO(247, 248, 252, 1),
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
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
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.badge,
                                  color: Colors.cyan,
                                ),
                                border: InputBorder.none,
                                hintText: "Iman Hafiz",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'opensans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.cyan,
                                ),
                                border: InputBorder.none,
                                hintText: "imanhafiz333@gmail.com",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'opensans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.pin,
                                  color: Colors.cyan,
                                ),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),

                                border: InputBorder.none,
                                hintText: "**********",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'opensans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.cyan,
                            Colors.cyan,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Out",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'opensans',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Text(
                      "DELETE ACCOUNT",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontFamily: 'opensans',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "version: 0.5.5",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontFamily: 'opensans',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
