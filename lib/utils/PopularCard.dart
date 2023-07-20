// This file contains the code for the PopularCard widget which is used in the PopularBooks screen.
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  late String Title;
  late String Desc;
  late String Img;
  late Color MyColor;

  CustomCard({
    required this.Title,
    required this.Desc,
    required this.Img,
    required this.MyColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 326,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: MyColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                  ),
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset("assets/Images/bookmark.png"),
                  ),
                ],
              )
            ],
          ),
          Container(
            width: 246 / 2,
            margin: EdgeInsets.only(
              right: 25,
            ),
            child: Card(
              elevation: 5,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Image.asset(
                      Img,
                      fit: BoxFit.cover,
                      height: 197.64122009277344,
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/Images/Vector.png",
                        width: 10,
                        height: 197.6728057861328,
                      ),
                      Image.asset(
                        "assets/Images/Vector (1).png",
                        width: 10,
                        height: 197.6728057861328,
                      ),
                      Image.asset(
                        "assets/Images/Vector (4).png",
                        width: 10,
                        height: 197.6728057861328,
                      ),
                      Image.asset(
                        "assets/Images/Vector (3).png",
                        width: 10,
                        height: 197.6728057861328,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Text(Title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              )),
          Text(Desc,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    );
  }
}
