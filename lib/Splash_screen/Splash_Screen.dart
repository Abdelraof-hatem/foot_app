import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foot_app/Splash_screen/welcom_screen.dart';
import 'package:foot_app/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  int count = 0;

  @override
  initState() {
    timer = Timer.periodic(const Duration(milliseconds: 1700), ((timer) {
      count++;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
      setState(() {});
      if (count == 2) {
        timer.cancel();
      }
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.amber,
      body: Center(
        child: SvgPicture.asset(
          '${imagePath}logo.svg',
        ),
      ),
    );
  }
}
