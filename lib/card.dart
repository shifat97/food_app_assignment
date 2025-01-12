import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Card itemCard(String imagePath, String title, String price) {
  return Card(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset(imagePath, width: 80, height: 80)),
              const SizedBox(height: 7.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF27214D),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  letterSpacing: -0.16,
                ),
              ),
              const SizedBox(height: 7.0),
              SizedBox(
                // width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: Color(0xFFF08626),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/add.svg'),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset('assets/icons/wishlist.svg'),
          ),
        ],
      ),
    ),
  );
}
