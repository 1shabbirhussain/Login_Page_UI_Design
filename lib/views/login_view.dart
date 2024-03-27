import 'package:asdfg/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key});

  @override
  Widget build(BuildContext context) {
  final LoginController _loginController = Get.put(LoginController());
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.amber,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: Get.height * 0.58,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(80),
                          topRight: const Radius.circular(80),
                          bottomLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.5),
                          bottomRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: Get.height * 0.33,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: Get.height * 0.58,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.5),
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.5),
                          bottomLeft: const Radius.circular(80),
                          bottomRight: const Radius.circular(80),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        height: Get.height * 0.85,
                        width: Get.width * 0.85,
                        // color: Colors.blue.withOpacity(0.3),
                        child: Column(
                          children: [
                            Image.asset("assets/login.png", height: 120),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "LOGIN",
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 26,
                                        fontFamily: "Source-San-3",
                                      ),
                                    ),
                                    Text(
                                      "By signing in you are agreeing our",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        fontFamily: "Source-San-3",
                                      ),
                                    ),
                                    Text(
                                      "Terms and Policies",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                        fontFamily: "Source-San-3",
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.amber[50],
                                    child: Image.asset("assets/logo1.png"),
                                    radius: 50,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // ===================================text form fields==============
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                onChanged: _loginController.setEmail,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.email),
                                  contentPadding: EdgeInsets.all(15.0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                obscureText: true,
                                onChanged: _loginController.setPassword,
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.lock),
                                  contentPadding: EdgeInsets.all(15.0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            // ===============================FORGET REMEMEBER======================
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CheckBoxWithText(),
                                const Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontFamily: "Source-San-3",
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            // =======================================BUTTONS==========================
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //LOGIN
                                Container(
                                  width: Get.width * 0.37,
                                  child: CustomElevatedButton(
                                    backgroundColor: Colors.amber,
                                    borderColor: Colors.amber,
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontFamily: "Source-San-3",
                                      ),
                                    ),
                                    onPressed: () {
                                      _loginController.login();
                                      print("i am pressesd");
                                    },
                                  ),
                                ),
                                //REGISTER
                                Container(
                                  width: Get.width * 0.37,
                                  child: CustomElevatedButton(
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.amber,
                                    child: const Text(
                                      'Register',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.amber,
                                        fontFamily: "Source-San-3",
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            // =======================================LOGIN WITH TOUCH==================
                            const Text(
                              'Login with touch ID',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black45,
                                fontFamily: "Source-San-3",
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  border: Border.all(
                                      color: Colors.amber, width: 2.0),
                                ),
                                child: const Icon(
                                  Icons.fingerprint,
                                  size: 70,
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            // =======================================LOGIN WITH TOUCH==================
                            const Text(
                              'or connect with',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black45,
                                fontFamily: "Source-San-3",
                              ),
                            ),
                            const SizedBox(height: 10.0),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.facebook,
                                  size: 30,
                                  color: Colors.black45,
                                ),
                                Text(
                                  "Facebook",
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.whatshot,
                                  size: 30,
                                  color: Colors.black45,
                                ),
                                Text("WhatShot")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.reddit,
                                  size: 30,
                                  color: Colors.black45,
                                ),
                                Text("Reddit")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}

class CheckBoxWithText extends StatefulWidget {
  @override
  _CheckBoxWithTextState createState() => _CheckBoxWithTextState();
}

class _CheckBoxWithTextState extends State<CheckBoxWithText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        const Text(
          "Remember Password",
          style: TextStyle(
            color: Colors.black45,
            fontSize: 14,
            fontFamily: "Source-San-3",
          ),
        ),
      ],
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final Widget child;
  final VoidCallback? onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: borderColor),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: child,
      ),
    );
  }
}
