import 'package:flutter/material.dart';

class InputTest extends StatefulWidget {
  const InputTest({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _InputTestState();
  }
}

class _InputTestState extends State<InputTest> {
  String _statusText = ".....";

  void _userNameChanged(String value) {
    setState(() {
      _statusText = "Username change : $value";
    });
  }

  void _userNameSubmitted(String value) {
    setState(() {
      _statusText = "Username submit : $value";
    });
  }

  void _passwordChanged(String value) {
    setState(() {
      _statusText = "Password change : $value";
    });
  }

  void _passwordSubmitted(String value) {
    setState(() {
      _statusText = "Password submit : $value";
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
            ),
          ],
        ),
      ),
    );
  }
}
