import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrintParameters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Params')),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text("${Get.parameters['id']}"),
              Text("${Get.parameters['name']}")
            ])));
  }
}
