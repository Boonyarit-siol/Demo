import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ค่า final คือ ตัวเเปรที่เเก้ไขค่าของตัวเเปรไม่ได้//
  final _usernameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController.text = "admin";
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
            child: Column(
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: "Username"),
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Dev: Login");
                    },
                    child: Text("Login"))
              ],
            ),
          )),
    );
  }
}
