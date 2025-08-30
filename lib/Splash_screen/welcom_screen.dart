import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foot_app/Home_Screen/Home_Screen.dart';
import 'package:foot_app/const.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFFFA451),
              padding: const EdgeInsets.all(14),
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  Image.asset(
                    "${imagePath}logo1.png",
                    height: 270,
                  ),
                  const SizedBox(height: 13),
                  SvgPicture.asset('${imagePath}Ellipse1.svg'),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF27214D),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "We deliver the best and freshest fruit salad in ",
                    style: TextStyle(color: Color(0xFF5D577E)),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "town. Order for a combo today!!!",
                    style: TextStyle(color: Color(0xFF5D577E)),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA451),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Let’s Continue",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
