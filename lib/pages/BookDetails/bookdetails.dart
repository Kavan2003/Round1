import 'package:flutter/material.dart';

import '../../utils/bookDescRatingBar.dart';
// import 'package:round001/utils/bookDescRatingBar.dart';

class bookDetails extends StatelessWidget {
  const bookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments passed from Navigator.pushNamed
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    // Now you can access the title and author from the arguments
    String title = arguments?['title'] ?? 'Unknown Title';
    String author = arguments?['author'] ?? 'Unknown Author';
    String img = arguments?['img'] ?? 'Unknown Image';
    Color Mycolor = arguments?['color'] ?? Colors.white;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Mycolor,
        actions: [
          Stack(
            children: [
              Container(
                width: 33,
                height: 33,
              ),
              Container(
                width: 33,
                height: 33,
                child: Image.asset(img, width: 33, height: 33),
                // width: 150,
                // height: 100,
              )
            ],
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Mycolor,
        // padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50, left: 15),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      )),
                  Text(author,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 0, bottom: 20),
              width: 150,
              height: 250,
              child: Stack(
                children: [
                  // Padding(
                  // padding: EdgeInsets.only(left: 00, bottom: 00),
                  Card(
                    elevation: 5,
                    child: Image.asset(
                      img,
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
              // child: Image.asset("assets/Images/coverblue.png"),
            ),
            const BookDescRatingBar(),
            Container(
              width: double.infinity,
              height: 321,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Description",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                          "The book demonstrates the uses of traditional and cutting edge lettering tools, from classic calligraphy pens to bling-producing metallic foils and glue pens. It introduces a wide array of lettering styles with complete alphabets . ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 0, 20, 0),
                      width: 315,
                      height: 66,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffda6d8f)),
                      child: const Center(
                        child: Text("Buy Now for \$19.00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
