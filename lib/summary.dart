import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taxi_booking_app/booking.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Summary"),
        backgroundColor: Colors.amber[600],
        elevation: 0,
        toolbarHeight: 100,
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/taxi.png',
                  width: 160,
                  height: 160,
                ),
                const Text(
                  "\$20",
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          locationInputField("XXX,XXX", false),
          const Text("|\n|"),
          locationInputField("XXX,XXX", false),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rate your last ride : ",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          RatingBar.builder(
              initialRating: 0,
              itemPadding: EdgeInsets.all(15),
              itemCount: 5,
              itemBuilder: ((context, index) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )),
              onRatingUpdate: (value) {}),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
                child: Text(
              "Submit",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
