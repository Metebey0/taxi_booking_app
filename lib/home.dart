import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          width: double.infinity,
          height: 300,
          child: Image.asset('assets/taxi.png'),
        ),
        const Text(
          "E-hailing Service",
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Wellcome! Take a ride to your destination with the cheapest fare",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ]),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "+90-XXXXXXXXX",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        GestureDetector(
          onTap: (() => Navigator.of(context).pushNamed('/booking')),
          child: Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "Book a ride",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "More",
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
