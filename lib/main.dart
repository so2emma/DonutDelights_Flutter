import 'package:donut_delights/provider/cart_provider.dart';
import 'package:donut_delights/screen/nav_bar_screen.dart';
import 'package:donut_delights/screen/onboardingScreen/onboarding_screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen1(),
      ),
    );
  }
}
