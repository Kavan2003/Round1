import 'package:flutter/material.dart';

import 'pages/BookDetails/bookdetails.dart';
import 'pages/home/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Gilroy-SemiBold',
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => Home(),
        'bookdetails': (context) => const bookDetails(),
      },
      initialRoute: '/',
    );
  }
}
