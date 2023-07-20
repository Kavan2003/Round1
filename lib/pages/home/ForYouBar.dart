import 'package:flutter/material.dart';

import '../../utils/forYou.dart';

class ForYouBar extends StatelessWidget {
  const ForYouBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text("For You",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
              ForYou(
                Title: "Cat Secrets",
                Desc: "Jef Czekaj",
                Mycolor: Color(0xffcef3fc),
                Img: "assets/Images/Fuzzy Friends Artsy Cat.png",
                group: "assets/Images/Group 33572.png",
              ),
              Padding(padding: EdgeInsets.all(10)),
              ForYou(
                Title: "Pat The Bunny",
                Desc: "Dorothy Kunhardt",
                Mycolor: Color(0xffda6d8f),

                Img: "assets/Images/Fuzzy Friends Curious Bunny.png",
                // group: "assets/Images/book.png",
                group: "assets/Images/Group 33572.png",
              ),
            ],
          ),
        )
      ],
    );
  }
}
