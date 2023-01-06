import 'package:flutter/material.dart';
import 'package:my_app/src/pages/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: LoginPage(),
    );
  }
}