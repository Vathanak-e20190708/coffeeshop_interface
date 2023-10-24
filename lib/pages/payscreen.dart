import 'package:flutter/material.dart';

class PayMent extends StatelessWidget {
  const PayMent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Payment Screen", 
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}