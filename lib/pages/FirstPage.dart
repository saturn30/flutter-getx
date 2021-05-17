import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('First')),
        body: Center(
          child: TextButton(
              child: Text('go Second Page'),
              onPressed: () {
                Get.toNamed('/second');
              }),
        ));
  }
}
