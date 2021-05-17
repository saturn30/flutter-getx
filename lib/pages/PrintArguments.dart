import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrintArguments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Arguments')),
        body: Center(child: Text("${Get.arguments}")));
  }
}
