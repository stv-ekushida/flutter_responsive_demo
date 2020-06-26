import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("HomePageMobile");

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Red"),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Blue"),
              ),
            ),
            Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Green"),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Yellow"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
