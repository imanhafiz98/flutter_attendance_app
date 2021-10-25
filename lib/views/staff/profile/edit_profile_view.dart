import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter_attendance_app/views/staff/profile/profile_view.dart';

class EditProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 252, 1),
      appBar: AppBar(
        leading: Container(
          //color: Colors.white,
          child: new IconButton(
            icon: new Icon(
              Icons.reply_all,
              color: Colors.cyan,
            ),
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 400),
                    child: ProfileView()),
              );
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
        backgroundColor: Color.fromRGBO(247, 248, 252, 1),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child:

            // Container(
            //   child: Column(children: <Widget> [
            //     SizedBox(height: 70),
            //     Container(
            //       height:100,
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage('assets/white_1.jpg'),
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //     ),
            Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyan.shade200,
                      blurRadius: 20.0,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.cyan,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 0,
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 50,
                        left: 20,
                        child: Text("Edit Profile",
                            style: TextStyle(
                                fontFamily: 'opensans',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan))),
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
                                //border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 248, 252, 1),
                                border: InputBorder.none,
                                hintText: "Nickname",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                //border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 248, 252, 1),
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[400]),
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan.shade200,
                            blurRadius: 10.0,
                            offset: Offset(0, 10),
                          ),
                        ],
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
                          "Save Changes",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'opensans',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
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
                                //border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 248, 252, 1),
                                border: InputBorder.none,
                                hintText: "Old Password",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                //border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 248, 252, 1),
                                border: InputBorder.none,
                                hintText: "New Password",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(247, 248, 252, 1),
                                border: InputBorder.none,
                                hintText: "Confirm New Password",
                                hintStyle: TextStyle(color: Colors.grey[400]),
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan.shade200,
                            blurRadius: 10.0,
                            offset: Offset(0, 10),
                          ),
                        ],
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
                          "Set New Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'opensans',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
