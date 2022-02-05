import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Login extends HookWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statusText = useState(".....");
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("ログイン画面"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(statusText.value),
            TextField(
              decoration: const InputDecoration(
                labelText: "Username (admin)",
                hintText: "Username",
                icon: Icon(Icons.account_circle),
              ),
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: (val) => {statusText.value = "Username change : " + val},
              onSubmitted: (val) => {statusText.value = "Username submit : " + val},
              controller: usernameController,
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
              onChanged: (val) => {statusText.value = "Password change : " + val},
              onSubmitted: (val) => {statusText.value = "Password submit : " + val},
              controller: passwordController,
            ),
            ElevatedButton(
              child: const Text("ログイン"),
              onPressed: () => {statusText.value = "login username:${usernameController.text} password:${passwordController.text}"},
            ),
          ],
        ),
      ),
    );
  }
}
