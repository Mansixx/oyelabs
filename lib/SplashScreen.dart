import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oyelabs/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        ));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 180, 0, 0),
                child: Image.asset("assets/splash.png"),
              ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Powered by Oyelabs",
                            style: TextStyle(
                              color: Color(0xff7e8389),
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "WITH LOVE ❤️",
                            style: TextStyle(
                              color: Color(0xff7583ca),
                              fontSize: 13,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w300,
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
