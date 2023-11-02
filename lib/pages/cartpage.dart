import 'package:coffee_project/pages/payscreen.dart';
import 'package:flutter/material.dart';
import 'package:coffee_project/components/coffeetile.dart';
import 'package:coffee_project/models/coffee.dart';
import 'package:coffee_project/models/coffeeshop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeFromcart(coffee);
  }

  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "My Cart",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.userCart[index];
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onTap: () => removeFromCart(eachCoffee),
                      icon: const Icon(Icons.delete),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(
                      builder: (context) {
                        return const PayMent();
                      }
                    ),
                  ),
                  child: OutlinedButton(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const PayMent()));
                      },
                      style: OutlinedButton.styleFrom( 
                        minimumSize: const Size(250, 70),
                        textStyle: const TextStyle(fontSize: 20),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.brown,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                      ),
                      child: const Text("Purchase Now", style: TextStyle(
                        fontWeight: FontWeight.bold)),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
