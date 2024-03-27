import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("home screen"),
        actions: [
          ElevatedButton(
              onPressed: () {
                Get.offNamed("/");
              },
              child: Text("LogOut")),
        ],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/YIR.gif"),
            ]),
      ),
    ));
  }
}
