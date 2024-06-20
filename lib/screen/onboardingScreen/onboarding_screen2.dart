import 'package:donut_delights/screen/nav_bar_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRect(child: Image.asset('assets/onboard_img2.png')),
            ],
          ),
          Positioned(
            right: 45,
            bottom: 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Indulge in Joyful  Circles of Flavor with  Doughnut Delights!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                      color: Colors.white),
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavBar(),
                        ),
                      );
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
