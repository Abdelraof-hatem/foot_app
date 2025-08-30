import 'package:flutter/material.dart';

import '../const.dart';

class DishWidget extends StatelessWidget {
  final String image;
  final String nameDish;
  final String cost;

  const DishWidget({
    super.key,
    required this.image,
    required this.nameDish,
    required this.cost,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "$imagePath$image",
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 12),
                Text(
                  nameDish,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "\$$cost",
                      style: const TextStyle(
                        color: Color(0xFFF08626),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xFFF08626),
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
            right: 14,
            top: 14,
            child: Icon(Icons.favorite_border, color: Color(0xFFF08626)),
          ),
        ],
      ),
    );
  }
}
