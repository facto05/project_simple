import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_simple/login_screen.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("images/bg_splashscreen.png").image,
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  const Text("version 1.0.22",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            const Text("Copyright @ 2022 by PT. Indocyber Global Teknologi",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.normal)),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
