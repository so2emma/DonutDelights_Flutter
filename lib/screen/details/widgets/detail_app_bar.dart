import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../cart/cart_screen.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      // this is for the appbar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 35,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(0),
              ),
              child: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(8),
              ),
              child: SvgPicture.asset(
                'assets/bottom_nav_icons/nav_cart.svg',
                width: 20,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
