import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Row(
          children: [
            Text(
              'Reviews',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "(85)",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFFACA9A7)),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/review_img.png'),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "John Doe",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "2 weeks ago",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFACA9A7),
                  ),
                )
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star_border,
                  size: 15,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
        )
      ],
    );
  }
}
