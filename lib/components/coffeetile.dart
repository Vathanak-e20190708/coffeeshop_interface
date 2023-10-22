// ignore_for_file: avoid_unnecessary_containers,, must_be_immutable
import 'package:flutter/material.dart';
import 'package:coffee_project/models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final Widget icon;
  void Function()? onTap;
  CoffeeTile({
    super.key,
    required this.coffee,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.brown, width: 3),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: ListTile(
          title: Text(coffee.name),
          subtitle: Text(coffee.price),
          leading: Image.asset(coffee.imagePath),
          trailing: IconButton(icon: icon, onPressed: onTap),
        ),
      ),
    );
  }
}
