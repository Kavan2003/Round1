import 'package:flutter/material.dart';

class ForYou extends StatelessWidget {
  late String Title;
  late String Desc;
  late Color Mycolor;
  late String Img;
  late String group;
  ForYou(
      {required this.Title,
      required this.Desc,
      required this.Mycolor,
      required this.Img,
      required this.group});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      width: 200,
      height: 300,
      child: Stack(
        children: [
          Positioned(
            top: 100,
            child: Container(
              width: 168,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Mycolor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 05, 10, 0),
                        width: 43,
                        height: 40,
                        // child: Container(
                        child: Image.asset("assets/Images/bookmark.png"),
                        // width: 55,
                        // height: 13.083090782165527,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Column(
                    children: [
                      Text(Title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          )),
                      Text(Desc,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              right: 01,
              child: Stack(
                children: [
                  Image.asset(
                    group,
                  ),
                  Image.asset(
                    Img,
                    width: 200,
                    height: 300,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
