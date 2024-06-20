import 'package:donut_delights/constants.dart';
import 'package:donut_delights/model/donut.dart';
import 'package:donut_delights/provider/cart_provider.dart';
import 'package:donut_delights/screen/details/widgets/item_details.dart';
import 'package:flutter/material.dart';

import 'widgets/detail_app_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.toggleFavourite(widget.product);
          SnackBar snackBar = const SnackBar(
            content: Text(
              'Successfully added!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            duration: Duration(seconds: 1),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DetailAppBar(),

            /// this is for the products image
            Center(
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  widget.product.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),

            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  right: 20,
                  left: 20,
                  bottom: 100,
                ),
                child: Column(
                  children: [
                    ItemDetails(
                      product: widget.product,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
