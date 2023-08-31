import 'package:coffee_shop_1/components/coffee_tile.dart';
import 'package:coffee_shop_1/models/coffee.dart';
import 'package:coffee_shop_1/models/coffee_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
// remove item from cart
  void removeFromcart(Coffee coffee) {
    Provider.of<CoffeeList>(context, listen: false).removeItemToCart(coffee);
  }

  //payment button function
  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeList>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),

              // list of the cart
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    //get indivisual cart item
                    Coffee eachCoffee = value.userCart[index];

                    //return coffee tile
                    return CoffeeTile(
                      coffee: eachCoffee,
                      icon: const Icon(Icons.delete),
                      onPressed: () => removeFromcart(eachCoffee),
                    );
                  },
                ),
              ),

              //pay button
              InkWell(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      'Pay Now',
                      style: TextStyle(color: Colors.white),
                    ),
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
