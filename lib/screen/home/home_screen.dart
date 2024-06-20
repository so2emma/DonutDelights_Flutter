import 'package:donut_delights/components/product_card.dart';
import 'package:donut_delights/constants.dart';
import 'package:donut_delights/model/donut.dart';
import 'package:donut_delights/screen/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/donut_recom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu_outlined),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'York Ave, Brooklyn',
                              prefixIcon:
                                  const Icon(Icons.location_on_outlined),
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.grey.shade400,
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 16)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "assets/profile_img.png",
                          width: 30,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Hi, John",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Recommended Items",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DonutRecom(
                        text: 'Classic',
                        path: 'assets/donut_reco/classic.svg',
                      ),
                      DonutRecom(
                        text: 'Filled',
                        path: 'assets/donut_reco/filled.svg',
                      ),
                      DonutRecom(
                        text: 'Fruity',
                        path: 'assets/donut_reco/fruity.svg',
                      ),
                      DonutRecom(
                        text: 'Decadent',
                        path: 'assets/donut_reco/decadent.svg',
                      ),
                      DonutRecom(
                        text: 'Nutty',
                        path: 'assets/donut_reco/nutty.svg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Bakeries',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            SvgPicture.asset('assets/dunkin_donut.svg'),
                            Container(
                              child: Transform.rotate(
                                angle: 50, // converting degrees to radians
                                child: Image.asset('assets/dunk.png'),
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Something Fresh ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              'is always ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              'Brewin\' Here ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/deli_donut.png',
                          width: 90,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dunkin\' Donuts',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryColor,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFCC10)),
                          Text(
                            '4.9',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time_outlined),
                          Text(
                            '45 min',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                  // this is for the donut items
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ProductCard(product: products[index]);
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
