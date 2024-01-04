import 'package:cofeeshop/models/coffee.dart';
import 'package:cofeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_tile.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

class ShopPages extends StatefulWidget {
  const ShopPages({Key? key}) : super(key: key);

  @override
  State<ShopPages> createState() => _ShopPagesState();
}

class _ShopPagesState extends State<ShopPages> {
  // add to cart
  void addCart(Coffee coffe) {
    Provider.of<CoffeShop>(context, listen: false).addToCart(coffe);

    // notivication succes add item to card

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Berhasil tambahkan ke keranjang',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.75),
        elevation: 0,
        duration: Duration(seconds: 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(10),
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "Mau Makan Apa Hari Ini ?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(83, 74, 74, 1),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop().length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.coffeeShop()[index];

                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => addCart(eachCoffee),
                      icon: const Icon(
                        Icons.add,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
