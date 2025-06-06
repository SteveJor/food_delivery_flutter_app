import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SJ. Food",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 248, 252, 248),
      ),
      routes: {"/": (context) => HomePage()},
    );
  }
}
