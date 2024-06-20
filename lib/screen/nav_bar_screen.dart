import 'package:donut_delights/constants.dart';
import 'package:donut_delights/screen/blank_screen.dart';
import 'package:donut_delights/screen/cart/cart_screen.dart';
import 'package:donut_delights/screen/filter_screen.dart';
import 'package:donut_delights/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List screens = const [
    HomeScreen(),
    FilterScreen(),
    BlankScreen(),
    BlankScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// This is to navigate to the cart page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: SvgPicture.asset(
          'assets/bottom_nav_icons/nav_cart.svg',
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: SvgPicture.asset(
                'assets/bottom_nav_icons/nav_home.svg',
                colorFilter: ColorFilter.mode(
                  currentIndex == 0 ? kPrimaryColor : kNavIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FilterScreen(),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  'assets/bottom_nav_icons/nav_list.svg',
                  colorFilter: ColorFilter.mode(
                    currentIndex == 1 ? kPrimaryColor : kNavIconColor,
                    BlendMode.srcIn,
                  ),
                )),
            const SizedBox(
              width: 15,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                icon: SvgPicture.asset(
                  'assets/bottom_nav_icons/nav_bookmark.svg',
                  colorFilter: ColorFilter.mode(
                    currentIndex == 2 ? kPrimaryColor : kNavIconColor,
                    BlendMode.srcIn,
                  ),
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                icon: SvgPicture.asset(
                  'assets/bottom_nav_icons/nav_profile.svg',
                  colorFilter: ColorFilter.mode(
                    currentIndex == 3 ? kPrimaryColor : kNavIconColor,
                    BlendMode.srcIn,
                  ),
                )),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
