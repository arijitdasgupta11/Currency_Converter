import 'package:flutter/material.dart';

class Currencyconverter extends StatefulWidget {
  const Currencyconverter({super.key});
  @override
  State<Currencyconverter> createState() {
    return _Currencyconverter();
  }
}

class _Currencyconverter extends State<Currencyconverter> {
  double res = 0;
  final TextEditingController tec = TextEditingController();
  final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1.5,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  Widget body()
  {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                '\u20B9${res.toStringAsFixed(2)}',
                style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: tec,
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      res = double.parse(tec.text) * 83.89;
                    });
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      fixedSize: const Size(200, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  child: const Text('Convert'))
            ],
          ),
        ),
      );
  }
  @override
  void dispose() {
    tec.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter'),
        foregroundColor: Colors.white,
        titleTextStyle:
            const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: body(),
    );
  }
}

// class Currencyconverterr extends StatelessWidget {
//   const Currencyconverterr({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }
// }
