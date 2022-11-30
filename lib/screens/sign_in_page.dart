import 'package:flutter/material.dart';
import 'package:flutter_login/screens/homepage.dart';

import '../navigate_help.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     elevation: 0,

      //     // actions:Icon(Icons.backpack),
      //     title: const Text("")),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 2, bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "e.g leroyowenz@gmail.com",
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 2, bottom: 10),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "enter password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 43, 100, 44),
                  padding: const EdgeInsets.only(
                      left: 165, right: 165, top: 18, bottom: 18)),
              onPressed: () {
                goTo(context, const HomePage());
              },
              child: const Text("Sign in"),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Forgot your Password?",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account yet?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Text(
                  " Sign Up",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
