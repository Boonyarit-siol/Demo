import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/bloc/login/login_bloc.dart';
import 'package:my_app/src/pages/home/home_page.dart';
import 'package:my_app/src/pages/login/login_page.dart';
import 'package:my_app/src/pages/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider(create: (context) => LoginBloc());
    return MultiBlocProvider(
        providers: [loginBloc],
        child: MaterialApp(
          title: "MyApp",
          routes: AppRoute.all,
          home: LoginPage(),
        ));
  }
}
