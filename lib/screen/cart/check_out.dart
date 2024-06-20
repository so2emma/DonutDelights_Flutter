import 'package:donut_delights/constants.dart';
import 'package:donut_delights/provider/cart_provider.dart';
import 'package:flutter/material.dart';

class CheckoutBox extends StatelessWidget {
  const CheckoutBox({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Container(
      height: 280,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kBackgroundColor,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: TextDesign(),
              ),
              Text(
                '\$ ${provider.totalPrice().toStringAsFixed(2)}',
                style: TextDesign(),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Promocode',
                style: TextDesign(),
              ),
              Text(
                '\$ 4.0',
                style: TextDesign(),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Charges',
                style: TextDesign(),
              ),
              Text(
                'Free',
                style: TextDesign(),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '\$ ${(provider.totalPrice() == 0.0 ? 0 : provider.totalPrice() - 4).toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                minimumSize: const Size(double.infinity, 55),
              ),
              child: const Text(
                'Order',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }

  TextStyle TextDesign() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color(0xFFACA9A7),
    );
  }
}
