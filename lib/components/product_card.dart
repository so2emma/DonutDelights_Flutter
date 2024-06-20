import 'package:donut_delights/constants.dart';
import 'package:donut_delights/model/donut.dart';
import 'package:donut_delights/screen/details/detail_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              product: product,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 12),
                Center(
                  child: Image.asset(
                    product.image,
                    // width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                // const SizedBox(height: 10),
                Text(
                  product.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kPrimaryColor),
                ),
                Text(
                  'Dunkin\'s',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xFFACA9A7)),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    Text(
                      '4.9',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 25,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFE8E3),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
                child: const Center(
                    child: Text(
                  '\$ 5',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
