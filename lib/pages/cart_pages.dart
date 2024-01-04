// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cofeeshop/components/coffee_tile.dart';
import 'package:cofeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPages extends StatefulWidget {
  const CartPages({Key? key}) : super(key: key);

  @override
  State<CartPages> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  // remove from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).removItemFromCard(coffee);
  }

  // pay now
  void payNow() {
    /*
      fill out your payment service here
    */
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                'List Order',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(83, 74, 74, 1),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //list of cart item

              Expanded(
                child: ListView.builder(
                    itemCount: value.userCart().length,
                    itemBuilder: (context, index) {
                      // get individual cart item
                      Coffee eachCoffee = value.userCart()[index];
                      return CoffeeTile(
                        coffee: eachCoffee,
                        icon: const Icon(Icons.delete),
                        onPressed: () => removeFromCart(eachCoffee),
                      );
                    }),
              ),

              Container(
                // pay button
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.brown[600],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {
                    // Logika saat tombol ditekan
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bayar Sekarang",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
