import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_simple/bottom_navigation.dart';
import 'package:project_simple/register_screen.dart';

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
        title: SvgPicture.asset(
          "svg/icon/iglo_logo_small_white.svg",
        ),
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
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Username"),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                    hintText: "Enter Username",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Password"),
              ),
              const SizedBox(
                height: 5,
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
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 5,
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
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    String username = usernameController.text.toString();
                    String password = passwordController.text.toString();
                    print("username => $username");
                    print("password => $password");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const BottomNavigation())));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: const Color.fromARGB(232, 155, 15, 15),
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const RegisterScreen())));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: const BorderSide(
                          width: 0.5, color: Color.fromARGB(232, 155, 15, 15)),
                      primary: Colors.white,
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Color.fromARGB(232, 155, 15, 15),
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton.icon(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: Colors.white,
                      minimumSize: const Size.fromHeight(50)),
                  icon: SvgPicture.asset("svg/icon/ico_prv_polcy.svg"),
                  label: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary:
                                  const Color.fromARGB(232, 252, 159, 159)),
                          icon: SvgPicture.asset("svg/icon/ico_feedback.svg"),
                          label: const Text(
                            "Feedback",
                            style: TextStyle(
                                color: Color.fromARGB(232, 155, 15, 15),
                                fontWeight: FontWeight.bold),
                          ))),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary:
                                  const Color.fromARGB(232, 252, 159, 159)),
                          icon: SvgPicture.asset("svg/icon/ico_share.svg"),
                          label: const Text("Share",
                              style: TextStyle(
                                  color: Color.fromARGB(232, 155, 15, 15),
                                  fontWeight: FontWeight.bold))))
                ],
              )
            ],
          )),
    );
  }
}
