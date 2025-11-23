import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                // label: Text(
                //   "Enter the value",
                //   style: TextStyle(color: Colors.white),
                // ),
                hintText: "Enter the amount in USD",
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                suffixIcon: Icon(Icons.monetization_on),
                suffixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
