import 'package:flutter/material.dart';

import '../../../components/donut_recom.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    prefixIcon: const Icon(Icons.location_on_outlined),
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
        const SizedBox(height: 30),
      ],
    );
  }
}
