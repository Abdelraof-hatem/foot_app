import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foot_app/Home_Screen/Home_screen2.dart';


import '../const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFFFFA451),
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    "${imagePath}image2.png",
                    height: 270,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 16),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('${imagePath}Ellipse1.svg'),
                      Positioned(
                        left: 38,
                        bottom: -2,
                        child: SvgPicture.asset('${imagePath}Ellipse4.svg'),
                      ),
                      Positioned(
                        right: 20,
                        top: -3,
                        child: SvgPicture.asset('${imagePath}Ellipse4.svg'),
                      ),
                      Positioned(
                        right: 40,
                        bottom: -2,
                        child: SvgPicture.asset('${imagePath}Ellipse4.svg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What is your firstname ?",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF27214D),
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "Tony",
                        border: InputBorder.none,
                      ),
                    ),
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
                                builder: (context) => const HomeScreen2()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA451),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Start Ordering",
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
            )
          ],
        ),
      ),
    );
  }
}
