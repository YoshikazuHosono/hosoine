import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  var _statusText = ".....";
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _userNameChanged(String value) {
    setState(() {
      _statusText = "Username change : " + _usernameController.text;
    });
  }

  void _userNameSubmitted(String value) {
    setState(() {
      _statusText = "Username submit : " + _usernameController.text;
    });
  }

  void _passwordChanged(String value) {
    setState(() {
      _statusText = "Password change : " + _passwordController.text;
    });
  }

  void _passwordSubmitted(String value) {
    setState(() {
      _statusText = "Password submit : " + _passwordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ログイン画面"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(_statusText),
            TextField(
              decoration: const InputDecoration(
                labelText: "Username (admin)",
                hintText: "Username",
                icon: Icon(Icons.account_circle),
              ),
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: _userNameChanged,
              onSubmitted: _userNameSubmitted,
              controller: _usernameController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Password (admin)",
                hintText: "Password",
                icon: Icon(Icons.security),
              ),
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              onChanged: _passwordChanged,
              onSubmitted: _passwordSubmitted,
              controller: _passwordController,
            ),
            ElevatedButton(
              child: const Text("ログイン"),
              onPressed: () => setState(() {
                _statusText = "login";
                _statusText += " username:" + _usernameController.text;
                _statusText += " password:" + _passwordController.text;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
