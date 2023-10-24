import 'package:my_last_project/homepage.dart';
import 'package:flutter/material.dart';
import 'package:my_last_project/list_page.dart';
import 'package:my_last_project/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Climate Change App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromRGBO(47, 204, 232, 1))),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/second_page': (context) => SecondPage(),
        '/list_page': (context) => ListPage(),
      },
    );
  }
}
