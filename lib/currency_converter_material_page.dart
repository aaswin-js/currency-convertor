import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(60)),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        // centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                controller: textEditingController,
                decoration: InputDecoration(
                  // label: Text(
                  //   "Enter the value",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  hintText: "Enter the amount in USD",
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  suffixIcon: const Icon(Icons.monetization_on),
                  suffixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                onSubmitted: (value)=> convert(),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //button
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  // print("Button clicked");
                  // debugPrint("button clicked");
                  // if (kDebugMode) {
                  //   print("button clicked");
                  // }
                  // print(textEditingController.text);
                  // print(double.parse(textEditingController.text) * 81);
                  convert();
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(15),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 55),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
                child: Text("convert ", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPagee extends StatelessWidget {
//   const CurrencyConverterMaterialPagee({super.key});
//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     TextEditingController textEditingController = TextEditingController();
//     final border = OutlineInputBorder(
//       borderSide: BorderSide(
//         width: 2,
//         strokeAlign: BorderSide.strokeAlignOutside,
//       ),
//       borderRadius: BorderRadius.all(Radius.circular(60)),
//     );
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         elevation: 0,
//         title: Text(
//           "Currency Converter",
//           style: TextStyle(color: Colors.white),
//         ),
//         // centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: TextStyle(
//                 fontSize: 55,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 style: const TextStyle(color: Colors.black),
//                 controller: textEditingController,
//                 decoration: InputDecoration(
//                   // label: Text(
//                   //   "Enter the value",
//                   //   style: TextStyle(color: Colors.white),
//                   // ),
//                   hintText: "Enter the amount in USD",
//                   hintStyle: const TextStyle(color: Colors.black),
//                   prefixIcon: const Icon(Icons.monetization_on),
//                   prefixIconColor: Colors.black,
//                   suffixIcon: const Icon(Icons.monetization_on),
//                   suffixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//                 keyboardType: TextInputType.numberWithOptions(decimal: true),
//               ),
//             ),
//             //button
//             Container(
//               padding: const EdgeInsets.all(10.0),
//               child: TextButton(
//                 onPressed: () {
//                   // print("Button clicked");
//                   // debugPrint("button clicked");
//                   // if (kDebugMode) {
//                   //   print("button clicked");
//                   // }
//                   // print(textEditingController.text);
//                   print(double.parse(textEditingController.text) * 81);
//                   result = double.parse(textEditingController.text) * 81;
//                 },
//                 style: ButtonStyle(
//                   elevation: WidgetStatePropertyAll(15),
//                   backgroundColor: WidgetStatePropertyAll(Colors.black),
//                   foregroundColor: WidgetStatePropertyAll(Colors.white),
//                   minimumSize: WidgetStatePropertyAll(
//                     Size(double.infinity, 55),
//                   ),
//                   shape: WidgetStatePropertyAll(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(60),
//                     ),
//                   ),
//                 ),
//                 child: Text("convert ", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
