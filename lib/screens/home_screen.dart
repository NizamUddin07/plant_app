import 'package:flutter/material.dart';
import 'package:plant_app/Utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(child:
              Container(
                color: secondaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 32),
                      child: Image.asset('images/more icon.png', width: 500,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text('Green', style: TextStyle(fontSize: 15),),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                        child: RotatedBox(
                          quarterTurns: 3,
                        child: RichText(
                            text: TextSpan(
                          children:[
                            TextSpan(
                                text: ".", style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: primaryColor
                            ),
                            ),
                            TextSpan(
                                text: "Shape Class", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: primaryColor
                            ),
                            ),
                          ]
                        ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text("Indor Plants",style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text("Indor Plants",style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              )
              )
            ],
          )
        ],
      ),
    );
  }
}
