import 'package:coffee_shop_1/components/coffee_tile.dart';
import 'package:coffee_shop_1/models/coffee.dart';
import 'package:coffee_shop_1/models/coffee_list.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
//add to cart
  void addTocart(Coffee coffee) {
    Provider.of<CoffeeList>(context, listen: false).addItemToCart(coffee);

    //let user know it add been sucessfully added
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added to cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeList>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading message
              const Text(
                "How would you like your Coffee?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeList.length,
                  itemBuilder: (context, index) {
                    Coffee eachcoffee = value.coffeeList[index];

                    return CoffeeTile(
                        icon: const Icon(Icons.add),
                        coffee: eachcoffee,
                        onPressed: () => addTocart(eachcoffee));
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
