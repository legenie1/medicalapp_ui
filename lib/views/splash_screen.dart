import 'package:flutter/material.dart';
import 'dart:async';
import 'package:medicalUI/views/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => IntroScreen()));
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 62, 129),
      body: Center(
        child: Text(
          'MENU',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
