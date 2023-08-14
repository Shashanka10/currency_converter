import 'package:flutter/material.dart';

class CurrencyConvo extends StatefulWidget {
  const CurrencyConvo({super.key});
  @override
  State<CurrencyConvo> createState() => _CurrencyConvoState();
}

class _CurrencyConvoState extends State<CurrencyConvo> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    const border = OutlineInputBorder(
      borderSide:
          BorderSide(color: Colors.green, width: 1.5, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    );

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 50, 49, 49),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 50, 49, 49),
          elevation: 0,
          title: const Text("Currency Converter"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(),
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in Nrs",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 183, 140, 140)),
                  suffixIcon: Icon(Icons.money),
                  suffixIconColor: Colors.lightGreen,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) / 120;
                  });
                },
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 32, 136, 37),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    fixedSize: const Size(398, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: const Text("Convert"),
              ),
            ),
          ],
        )));
  }
}
