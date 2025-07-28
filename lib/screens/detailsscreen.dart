import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // Hero(tag: "flower1", child: Image.asset("images/flower1.png")),
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.85,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onDoubleTap: () {},
                      child: Icon(Icons.arrow_back, size: 30),
                    ),
                    Image.asset(
                      "images/filter icon.png",
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
