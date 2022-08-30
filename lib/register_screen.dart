import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final referralController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
          backgroundColor: const Color.fromARGB(232, 238, 35, 21),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              child: Column(children: [
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Please Fill In The Following Data",
                    style: TextStyle(
                        color: Color.fromARGB(232, 155, 15, 15),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: "First Name"),
                      TextSpan(text: "*", style: TextStyle(color: Colors.red))
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                      hintText: "Input Your First Name",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: "Last Name"),
                      TextSpan(text: "*", style: TextStyle(color: Colors.red))
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                      hintText: "Input Your Last Name",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: "E-mail"),
                      TextSpan(text: "*", style: TextStyle(color: Colors.red))
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Input Your E-mail",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: "Phone Number"),
                      TextSpan(text: "*", style: TextStyle(color: Colors.red))
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                      prefixText: "+62 ",
                      hintText: "Input Your Phone Number",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                    alignment: Alignment.topLeft, child: Text("Referral Code")),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: referralController,
                  decoration: InputDecoration(
                      hintText: "Input Your Referral Code",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: "Password"),
                      TextSpan(text: "*", style: TextStyle(color: Colors.red))
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      hintText: "Input Your Password",
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
              ]),
            ),
          ],
        ));
  }
}
