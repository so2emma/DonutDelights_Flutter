import 'package:donut_delights/constants.dart';
import 'package:donut_delights/model/donut.dart';
import 'package:donut_delights/provider/cart_provider.dart';
import 'package:donut_delights/screen/details/widgets/reviews_section.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key, required this.product});

  final Product product;

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.product.title,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Color(0xFFFFCC10)),
                Text(
                  widget.product.rating,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 15),
        Text(
          widget.product.desctiption,
          style: const TextStyle(
              fontWeight: FontWeight.w400, color: Color(0xFFACA9A7)),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.local_fire_department_outlined,
                      size: 20,
                      color: Color(0xFFACA9A7),
                    ),
                    Text(
                      '${widget.product.calories} Calories',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFACA9A7),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 20,
                      color: Color(0xFFACA9A7),
                    ),
                    Text(
                      '45 mins',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFACA9A7),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.add_business,
                      size: 20,
                      color: Color(0xFFACA9A7),
                    ),
                    Text(
                      '${widget.product.calories} Calories',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFACA9A7),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kPrimaryColor,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            if (currentIndex != 1) {
                              setState(() {
                                currentIndex--;
                              });
                            }
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      currentIndex.toString(),
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kPrimaryColor,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndex++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ ${widget.product.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: double.infinity,
          height: 1,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Color(0xFFACA9A7)),
          ),
        ),
        const ReviewsSection()
      ],
    );
  }
}
