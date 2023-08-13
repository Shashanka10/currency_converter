import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white),
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  hintText: "Please enter the amount in Neplease Rupees",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.money),
                  suffixIconColor: Colors.lightGreen,
                  filled: true,
                  fillColor: Colors.white),
            ),
          ],
        )));
  }
}
