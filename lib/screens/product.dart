import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  const Product({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset(image, width: 300)),
        SizedBox(height: 10),

        Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 55, right: 20),
          child: Text(
            "More details about the product that customer want to know",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 54, right: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$$price',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image.asset("images/basket icon.png", height: 40, width: 40,)
          ],
        ),
        )
        
      ],
    );
  }
}
