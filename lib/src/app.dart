import 'package:flutter/material.dart';
import 'package:my_app/src/pages/home/home_page.dart';
import 'package:my_app/src/pages/login/login_page.dart';
import 'package:my_app/src/pages/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      routes: AppRoute.all,
      home: LoginPage(),

    );
  }
}
