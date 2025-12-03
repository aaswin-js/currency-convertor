import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 80;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: CupertinoColors.black),
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: CupertinoTextField(
                  style: const TextStyle(color: CupertinoColors.black),
                  controller: textEditingController,
                  placeholder: "Enter the amount in USD",
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  suffix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
            ),

            // Button
            Container(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text("Convert", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
