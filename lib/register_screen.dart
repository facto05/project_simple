import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
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
  bool _isObscureConfirm = true;

  @override
  void initState() {
    super.initState();
    referralController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Register"),
        backgroundColor: const Color.fromARGB(232, 155, 15, 15),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(30),
            child: Column(
              children: [
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
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text("+62"),
                      ),
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
                      suffixIcon: (referralController.text.contains("SDK"))
                          ? SvgPicture.asset(
                              "svg/icon/ico_data_right.svg",
                              fit: BoxFit.scaleDown,
                            )
                          : null,
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
                FlutterPwValidator(
                  width: 400,
                  height: 150,
                  minLength: 10,
                  onSuccess: () {},
                  controller: passwordController,
                  normalCharCount: 1,
                  uppercaseCharCount: 1,
                  numericCharCount: 1,
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: const [
                //         Text(
                //           "Password must contains :",
                //           style: TextStyle(color: Colors.grey, fontSize: 10),
                //         ),
                //         Text(" \u2022 1 lower case letter [a-z]",
                //             style: TextStyle(color: Colors.grey, fontSize: 10)),
                //         Text(" \u2022 1 Upper case letter [A-Z]",
                //             style: TextStyle(color: Colors.grey, fontSize: 10)),
                //         Text(" \u2022 1 numeric character [0-9]",
                //             style: TextStyle(color: Colors.grey, fontSize: 10)),
                //         Text(" \u2022 at least 10 character in length",
                //             style: TextStyle(color: Colors.grey, fontSize: 10))
                //       ]),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: "Confirm Password"),
                      TextSpan(text: "*", style: TextStyle(color: Colors.red))
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: _isObscureConfirm,
                  decoration: InputDecoration(
                      hintText: "Input Your Password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscureConfirm = !_isObscureConfirm;
                            });
                          },
                          icon: Icon(_isObscureConfirm
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    String firstName = firstNameController.text.toString();
                    String lastName = lastNameController.text.toString();
                    String email = emailController.text.toString();
                    String phoneNumber = phoneNumberController.text.toString();
                    String referral = referralController.text.toString();
                    String password = passwordController.text.toString();
                    String confirmPassword =
                        confirmPasswordController.text.toString();

                    print(
                        "first name => $firstName \nlast name => $lastName \ne-mail => $email \nphone number => $phoneNumber");
                    print(
                        "referral => $referral \npassword => $password \nconfirm password => $confirmPassword");

                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: const Color.fromARGB(232, 155, 15, 15),
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text("Submit"),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 1, color: Color.fromARGB(232, 155, 15, 15)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: const Color.fromARGB(232, 252, 159, 159),
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Color.fromARGB(232, 155, 15, 15)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
