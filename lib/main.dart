import 'package:flutter/material.dart';
import 'package:maskbook/pages/FeedPage.dart';

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
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromRGBO(220, 220, 220, 1)
      ),
      debugShowCheckedModeBanner: false,
      home: FeedPage(),
    );
  }
}