import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center ,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/icons/hamburger.svg',
            width: 25,
            height: 15,
          ),
          Column(
            children: [
              Icon(
                Icons.shopping_basket_outlined,
                color: Color(0xFFFFA451),
              ),
              const SizedBox(height: 5),
              Text('My Basket', style: TextStyle(
                fontFamily: 'Poppins'
              ),)
            ],
          ),
        ],
      ),
    );
  }
}
