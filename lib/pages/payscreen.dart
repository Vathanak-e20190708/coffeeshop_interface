import 'package:flutter/material.dart';

class PayMent extends StatelessWidget {
  const PayMent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new, color: Colors.black,),
            ),
            const Text(" Back", style: TextStyle(fontSize: 24),)
          ],
        ),
      ),
      body: Center(
        child: Image.asset("images/qr.jpeg"),
      ),
    );
  }
}