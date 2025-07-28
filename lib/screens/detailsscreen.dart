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
            Hero(tag: "flower1", child: Image.asset("images/flower1.png")),
          ],
        ),
      ),
    );
  }
}
