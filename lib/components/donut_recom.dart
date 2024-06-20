import 'package:donut_delights/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DonutRecom extends StatelessWidget {
  const DonutRecom({
    super.key,
    required this.text,
    required this.path,
  });

  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(path),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(color: kDonut_recom, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
