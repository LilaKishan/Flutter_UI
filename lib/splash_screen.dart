import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoping/bottomnavigationbar.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (builder) => BottomNavigationBarPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/images/ss.gif',
          gaplessPlayback: true,
          fit: BoxFit.fill,
        ),
        // Image.network(
        //   'https://cdn.dribbble.com/users/99088/screenshots/3535098/media/afee972ec061fa44bbe0d6957744d34a.gif',
        //   fit: BoxFit.fill,
        //   gaplessPlayback: true,
        // ),
      ]),
    );
  }
}
