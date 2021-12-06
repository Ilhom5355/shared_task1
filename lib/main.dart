import 'package:flutter/material.dart';
import 'package:shared_task1/pages/home_page.dart';
import 'package:shared_task1/pages/sign_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SignPage.id: (context) => SignPage(),
      },
    );
  }
}
