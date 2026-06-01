import 'dart:async';
import 'package:chtera/page/eka_register.dart';
import 'package:flutter/material.dart';

import 'eka_login.dart';

class EkaSplashScreen extends StatefulWidget {
  const EkaSplashScreen({super.key});

  @override
  State<EkaSplashScreen> createState() => _EkaSplashScreenState();
}

class _EkaSplashScreenState extends State<EkaSplashScreen> {
  late Timer r;
  @override
  void initState() {
    r = Timer.periodic(
      const Duration(seconds: 3),
          (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => EkaLogin()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.tealAccent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/apk.jpeg"),
            SizedBox(height: 40),
            Text(
              'Chattera',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Aplikasi Chatting You',
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}