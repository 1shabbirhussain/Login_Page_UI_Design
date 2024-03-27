import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Other Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/home?name=Shabir Hussain&father=M Khalid");
                },
                child: Text("goto home")),
            ElevatedButton(onPressed: () {}, child: Text("data2")),
            
            Text("this is what is get in parameter ${Get.parameters["valuePassed"]}")
          ],
        ),
      ),
    ));
  }
}
