import 'package:flutter/material.dart';

class BookDescRatingBar extends StatelessWidget {
  const BookDescRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303,
      height: 81,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0x4cffffff)),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 30),
                    Text("4.5"),
                  ],
                ),
                Text("Rating")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                // Row(
                // children: [
                // Icon(Icons.star, color: Colors.amber, size: 30),
                Text("108"),
                Padding(padding: EdgeInsets.only(top: 8)),
                // ],
                // ),
                Text("Pages")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                // Row(
                // children: [
                // Icon(Icons.star, color: Colors.amber, size: 30),
                Text("Eng",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    )),
                Padding(padding: EdgeInsets.only(top: 8)),
                // ],
                // ),
                Text("Pages")
              ],
            ),
          ]),
    );
  }
}
