import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foot_app/widget/dish_widget.dart';

import '../const.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          SizedBox(width: 24),
          ImageIcon(AssetImage("${imagePath}icon1.png")),
          Spacer(),
          ImageIcon(
            AssetImage("${imagePath}Vector.png"),
            color: Color(0xFFFFA451),
          ),
          SizedBox(width: 24),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello Tony, What fruit salad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Text(
                "Combo do you want today?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 24),

              /// Search bar
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF3F4F9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search for fruit salad combos",
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("${imagePath}iconSearch.svg"),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              /// Recommended Combo
              const Text(
                "Recommended Combo",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DishWidget(
                      image: "dish1.png",
                      nameDish: "Honey lime combo",
                      cost: "2000"),
                  SizedBox(width: 23),
                  DishWidget(
                      image: "dish1.png",
                      nameDish: "Honey lime combo",
                      cost: "2000"),
                ],
              ),
              const SizedBox(height: 48),

              /// Categories Row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(color: Color(0XFF938DB5)),
                  ),
                  Text(
                    "New combo",
                    style: TextStyle(color: Color(0XFF938DB5)),
                  ),
                  Text(
                    "Top",
                    style: TextStyle(color: Color(0XFF938DB5)),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              /// Horizontal list
              SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: DishWidget(
                      image: "dish1.png",
                      nameDish: "Honey lime combo",
                      cost: "200",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
