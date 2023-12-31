import 'package:coffee_shop_1/models/coffee.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoffeeTile extends StatelessWidget {
  void Function()? onPressed;
  final Widget icon;
  final Coffee coffee;
  CoffeeTile(
      {super.key,
      required this.coffee,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
