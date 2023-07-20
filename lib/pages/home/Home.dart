import 'package:flutter/material.dart';
import 'package:round001/pages/home/ForYouBar.dart';

import 'Popularbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            width: 165,
            height: 220,
            child: Image.asset("assets/Images/Menu.png"),
          ),
          actions: [
            Container(
              width: 70,
              // height: 220,
              child: Image.asset("assets/Images/search.png"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Container(
                width: 40,
                height: 40,
                child: Image.asset("assets/Images/Ellipse 1.png"),
              ),
            )
          ],

          // title: const Text('Scrollable Row with Cards'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              popularbar(),
              Padding(padding: EdgeInsets.all(15)),
              ForYouBar()
            ],
          ),
        ));
  }
}
