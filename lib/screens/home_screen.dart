import 'package:flutter/material.dart';
import 'package:plant_app/Utils/colors.dart';
import 'package:plant_app/screens/detailsscreen.dart';
import 'package:plant_app/screens/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(children: [sideBar(), bodyParts(size, context)]),
          Positioned(
            top: 90,
            left: 30,
            child: Text(
              "Plants",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(top: 40, right: 10, child: Icon(Icons.search, size: 20)),
        ],
      ),
    );
  }

  Container bodyParts(Size size, BuildContext context) => Container(
    width: size.width * 0.8,
    color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 130),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
            child: Hero(
              tag: "flower1",
              child: Product(
                image: "images/flower1.png",
                name: "House shape Close",
                price: "45",
              ),
            ),
          ),
          Hero(
            tag: "flower2",
            child: Product(
              image: "images/flower2.png",
              name: "Glass Water",
              price: "60",
            ),
          ),
        ],
      ),
    ),
  );

  Expanded sideBar() {
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 30),
              child: Image.asset('images/more icon.png', width: 60),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Green', style: TextStyle(fontSize: 15)),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: "Shape Class",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Indor Plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Indor Plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, right: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: primaryColor,
                ),
                width: 50,
                height: 60,
                child: Icon(Icons.home, color: Colors.white, size: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
