import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/white_1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: TweenAnimationBuilder(
                        duration: Duration(seconds: 2),
                        tween: Tween<double>(begin: 0, end: 55),
                        builder: (_, double angle, __) {
                          return Transform.rotate(
                            angle: angle,
                            child: Icon(
                              Icons.perm_identity,
                              color: Colors.cyan,
                              size: 30.0,
                            ),
                          );
                        }),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage('assets/lamp_1.jpg'),
                    //     ),
                    //   ),
                    // ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: IconButton(
                      icon: Icon(
                        Icons.lightbulb,
                        color: Colors.yellow,
                        size: 30.0,
                      ),
                      onPressed: () {
                        
                      },
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage('assets/lamp_2.jpg'),
                    //     ),
                    //   ),
                    // ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 30.0,
                      ),
                      onPressed: () {
                       
                      },
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage('assets/clock.jpg'),
                    //     ),

                    //   ),
                    // ),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        // child: Text("Log in", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                          color: Colors.cyan.shade200,
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
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: _isObscure,
                            decoration: InputDecoration(
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
                              hintText: "Password",
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
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  Text(
                    "Forget Password",
                    style: TextStyle(
                      color: Colors.cyan,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Register here",
                    style: TextStyle(
                      color: Colors.cyan,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
