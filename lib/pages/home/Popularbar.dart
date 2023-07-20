import 'package:flutter/material.dart';

import '../../utils/PopularCard.dart';

class popularbar extends StatelessWidget {
  const popularbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text("Popular",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text("Show all",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
            )
          ],
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.all(0),
          scrollDirection: Axis.horizontal,
          child: Row(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      'bookdetails',
                      arguments: {
                        'title': 'Modern Calligraphy',
                        'author': 'June and Lucy',
                        'color': const Color(0xffcef3fc),
                        'img': "assets/Images/coverblue.png",
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 30),
                    child: CustomCard(
                      MyColor: const Color(0xffcef3fc),
                      Img: "assets/Images/coverblue.png",
                      Title: 'Modern Calligraphy',
                      Desc: 'June and Lucy',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      'bookdetails',
                      arguments: {
                        'title': 'Yves Saint Laurent',
                        'author': 'Suzy Menkes',
                        'color': const Color(0xFFDA6D8F),
                        'img': "assets/Images/coverpink.png",
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 30),
                    child: CustomCard(
                      MyColor: const Color(0xFFDA6D8F),
                      Img: "assets/Images/coverpink.png",
                      Title: 'Yves Saint Laurent',
                      Desc: 'Suzy Menkes ',
                    ),
                  ),
                ),
              ]
              // return
              // }).toList(),
              ),
        ),
      ],
    );
  }
}
