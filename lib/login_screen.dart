import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("/images/title.png", height: 30),
        backgroundColor: const Color.fromARGB(232, 238, 35, 21),
      ),
      body: Container(
          margin: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "svg/icon/iglo_logo_big_color.svg",
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Username"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                    hintText: "Enter Username",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Password"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(_isObscure
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Color.fromARGB(232, 155, 15, 15),
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(232, 155, 15, 15),
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 0.5, color: Color.fromARGB(232, 155, 15, 15)),
                      primary: Colors.white,
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        color: Color.fromARGB(232, 155, 15, 15),
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )),
    );
  }
}
