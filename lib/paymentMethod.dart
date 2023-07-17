import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Methods"),
        backgroundColor: Colors.amber[600],
        elevation: 0,
        toolbarHeight: 100,
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          paymentMethod("Master Card", "assets/mastercard.png"),
          const SizedBox(
            height: 30,
          ),
          paymentMethod("Paypal", "assets/paypal.png"),
          const SizedBox(
            height: 30,
          ),
          paymentMethod("Visa", "assets/visa.png"),
          const SizedBox(
            height: 380,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/summary'),
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.amber[600],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget paymentMethod(String title, String iconPath) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3))
        ]),
    child: ListTile(
      title: Text(title),
      leading: Container(
        child: Image.asset(iconPath),
        height: 50,
        width: 50,
      ),
      trailing: const Icon(Icons.circle_outlined),
    ),
  );
}
