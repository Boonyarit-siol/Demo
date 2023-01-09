import 'package:flutter/material.dart';
import 'package:my_app/src/pages/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ค่า final คือ ตัวเเปรที่เเก้ไขค่าของตัวเเปรไม่ได้//
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Card(
              child: Container(
                  padding: const EdgeInsets.all(32),
                  height: 370,
                  child: Column(
                    // ยืดปุ่ม login & reset
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ..._buildTextFields(),
                      SizedBox(
                        height: 32,
                      ),
                      ..._buildButtons()
                    ], // ...เพื่อถอด array ออกมา],
                  )),
            ),
          )),
    );
  }

  void _handaleClickLogin() {
  //   print(
  //       "Dev:Login with ${_usernameController.text}, ${_passwordController.text}) ");
    Navigator.pushNamed(context, AppRoute.home);
        // link to home_page.dart
  }

  void _handaleClickReset() {
    _usernameController.text = "";
    _passwordController.text = "";
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "Username"),
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: "Password"),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(
        onPressed: _handaleClickLogin,
        child: Text("Signin"),
      ),
      OutlinedButton(onPressed: _handaleClickRegister, child: Text("Register")),
      OutlinedButton(onPressed: _handaleClickReset, child: Text("Reset")),
    ];
  }

  void _handaleClickRegister() {
    Navigator.pushNamed(context, AppRoute.register);
  }
}
