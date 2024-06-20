import 'package:donut_delights/constants.dart';
import 'package:donut_delights/provider/cart_provider.dart';
import 'package:donut_delights/screen/cart/check_out.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    // this is for the quantity
    productQuantity(IconData icon, int index) {
      return Container(
        width: 35,
        height: 35,
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
                icon == Icons.add
                    ? provider.incrementQtn(index)
                    : provider.decrementQtn(index);
              });
            },
            icon: Icon(
              icon,
              color: kPrimaryColor,
              size: 15,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      bottomSheet: const CheckoutBox(),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Cart',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: IconButton.styleFrom(backgroundColor: Colors.white),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: finalList.length,
                    itemBuilder: (context, index) {
                      final cartItems = finalList[index];
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 90,
                                    child: Image.asset(cartItems.image),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cartItems.title,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 7),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Color(0xFFFFCC10),
                                                ),
                                                Text(
                                                  cartItems.rating,
                                                  style: const TextStyle(
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                ),
                                                Text(
                                                  "Free",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                productQuantity(
                                                    Icons.remove, index),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  cartItems.quantity.toString(),
                                                  style: const TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                productQuantity(
                                                    Icons.add, index),
                                              ],
                                            ),
                                            Text(
                                              "\$ " +
                                                  cartItems.price.toString(),
                                              style: const TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 7,
                              right: 7,
                              child: Container(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.close,
                                    color: Color(0xFFDFDEDD),
                                  ),
                                ),
                              ))
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
