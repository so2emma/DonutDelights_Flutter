import 'package:donut_delights/screen/onboardingScreen/onboarding_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFff647d),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardingScreen2()));
              },
              icon: const Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
              tooltip: 'Move to the next Page',
            )
          ],
        ),
        backgroundColor: const Color(0xFFff647d),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/logo.svg'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Donut Delights',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/onboard_img1.png'),
              ],
            )
          ],
        ));
  }
}
